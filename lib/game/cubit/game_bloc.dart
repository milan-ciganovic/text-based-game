import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/game/data/monster_repository.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/situation.dart';
import 'package:untitled1/game/models/world_state.dart';
import 'package:untitled1/game/service/game_engine.dart';

part 'game_bloc.freezed.dart';
part 'game_bloc_event.dart';
part 'game_bloc_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(this._gameEngine)
    : super(
        const GameState(
          worldState: WorldState(
            player: Actor.player(
              name: 'Hero',
              health: 20,
              maxHealth: 20,
            ),
          ),
        ),
      ) {
    // Use a single handler for the Freezed-based GameEvent union
    on<GameEvent>(_onGameEvent);
  }

  final GameEngine _gameEngine;

  Future<void> _onGameEvent(GameEvent event, Emitter<GameState> emit) async {
    await event.when(
      startGame: () async {
        final newWorldState = state.worldState.addLog(
          'You begin your journey...',
        );
        emit(_createGameState(newWorldState));
        add(const GameEvent.spawnMonster());
      },
      spawnMonster: () async {
        final monster = MonsterRepository.random();
        var newWorldState = state.worldState.copyWith(
          actors: {...state.worldState.actors, monster.displayName: monster},
          currentSituation: Situation.combat(
            monsterName: monster.displayName,
            description: 'A wild ${monster.displayName} appears!',
          ),
        );
        newWorldState = newWorldState.addLog(
          'A wild ${monster.displayName} appears!',
        );
        emit(_createGameState(newWorldState));
      },
      performAction: (action) async {
        await _handlePerformAction(action, emit);
      },
      attack: () async {
        await _handlePerformAction(Action.attack(targetName: 'opponent'), emit);
      },
      defend: () async {
        await _handlePerformAction(Action.defend(), emit);
      },
      flee: () async {
        await _handlePerformAction(Action.flee(), emit);
      },
      rest: () async {
        await _handlePerformAction(Action.rest(), emit);
      },
      inspectOpponent: () async {
        final opponent = state.worldState.getCurrentOpponent();
        if (opponent != null) {
          await _handlePerformAction(
            Action.inspect(targetName: opponent.displayName),
            emit,
          );
        }
      },
    );
  }

  Future<void> _handlePerformAction(
    Action action,
    Emitter<GameState> emit,
  ) async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true));

    try {
      var newWorldState = await _gameEngine.processAction(
        state.worldState,
        action,
      );

      // Update available actions based on situation
      final availableActions = _getAvailableActions(newWorldState);

      // Check for end of combat
      if (!newWorldState.isInCombat &&
          state.worldState.isInCombat &&
          !newWorldState.isGameOver) {
        // Combat ended, offer to spawn new monster or rest
        await Future<void>.delayed(const Duration(milliseconds: 1000));
        newWorldState = newWorldState.addLog('');
        newWorldState = newWorldState.addLog('What will you do now?');
      }

      emit(
        GameState(
          worldState: newWorldState,
          availableActions: availableActions,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          worldState: state.worldState.addLog('Error: $e'),
          isLoading: false,
        ),
      );
    }
  }

  GameState _createGameState(WorldState worldState) {
    final availableActions = _getAvailableActions(worldState);
    return GameState(
      worldState: worldState,
      availableActions: availableActions,
    );
  }

  List<String> _getAvailableActions(WorldState worldState) {
    if (worldState.isGameOver) {
      return ['Game Over'];
    }

    if (worldState.isInCombat) {
      return ['Attack', 'Defend', 'Flee', 'Inspect Opponent'];
    }

    return ['Rest', 'Search for Monster'];
  }
}
