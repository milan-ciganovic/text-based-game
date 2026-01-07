import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/action.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/situation.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';
import 'package:untitled1/domain/repository/monster_repository.dart';
import 'package:untitled1/service/process_action_use_case.dart';

part 'game_bloc.freezed.dart';
part 'game_bloc_event.dart';
part 'game_bloc_state.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(this._processActionUseCase)
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
    on<GameEvent>((event, emit) async {
      await event.when(
        startGame: () async => _handleStartGame(emit),
        spawnMonster: () async => _handleSpawnMonster(emit),
        performAction: (action) async => _handlePerformAction(action, emit),
        attack: () async => _handleAttack(emit),
        defend: () async => _handleDefend(emit),
        flee: () async => _handleFlee(emit),
        rest: () async => _handleRest(emit),
        inspectOpponent: () async => _handleInspectOpponent(emit),
      );
    });
  }

  final ProcessActionUseCase _processActionUseCase;

  Future<void> _handlePerformAction(
    Action action,
    Emitter<GameState> emit,
  ) async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true));

    try {
      // Process action directly with WorldState - no DTOs needed!
      final updatedWorld = await _processActionUseCase(
        state.worldState,
        action,
      );

      // Update available actions based on situation
      final availableActions = _getAvailableActions(updatedWorld);

      // Check for end of combat and add helpful message
      final newWorld = updatedWorld.applyIf(
        !updatedWorld.isInCombat &&
            state.worldState.isInCombat &&
            !updatedWorld.isGameOver,
        (w) => w.withLogs(['', 'What will you do now?']),
      );

      emit(
        GameState(
          worldState: newWorld,
          availableActions: availableActions,
          // ignore: avoid_redundant_argument_values
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          worldState: state.worldState.withLog('Error: $e'),
          isLoading: false,
        ),
      );
    }
  }

  Future<void> _handleDefend(Emitter<GameState> emit) async {
    await _handlePerformAction(const Action.defend(), emit);
  }

  Future<void> _handleRest(Emitter<GameState> emit) async {
    await _handlePerformAction(const Action.rest(), emit);
  }

  Future<void> _handleStartGame(Emitter<GameState> emit) async {
    final newWorldState = state.worldState.withLog('You begin your journey...');
    emit(_createGameState(newWorldState));
    add(const GameEvent.spawnMonster());
  }

  Future<void> _handleSpawnMonster(Emitter<GameState> emit) async {
    final monster = MonsterRepository.random();

    final newWorldState = state.worldState
        .withActor(monster.displayName, monster)
        .copyWith(
          currentSituation: Situation.combat(
            monsterName: monster.displayName,
            description: 'A wild ${monster.displayName} appears!',
          ),
        )
        .withLog('A wild ${monster.displayName} appears!');

    emit(_createGameState(newWorldState));
  }

  Future<void> _handleAttack(Emitter<GameState> emit) async {
    final opponent = state.worldState.currentOpponent;
    final targetName = opponent?.displayName ?? 'opponent';
    await _handlePerformAction(
      Action.attack(targetName: targetName),
      emit,
    );
  }

  Future<void> _handleFlee(Emitter<GameState> emit) async {
    await _handlePerformAction(const Action.flee(), emit);
  }

  Future<void> _handleInspectOpponent(Emitter<GameState> emit) async {
    final opponent = state.worldState.currentOpponent;
    if (opponent != null) {
      await _handlePerformAction(
        Action.inspect(targetName: opponent.displayName),
        emit,
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
