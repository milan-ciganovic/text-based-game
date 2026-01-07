import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/game/data/monster_repository.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/game_model.dart';
import 'package:untitled1/game/models/situation.dart';
import 'package:untitled1/game/models/world_state.dart';
import 'package:untitled1/game/service/process_action_use_case.dart';

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
    // Use an inline handler for the Freezed-based GameEvent union
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
      // Build a decoupled request DTO for the use-case
      final request = GameRequest(
        player: state.worldState.player,
        actors: state.worldState.actors,
        currentSituation: state.worldState.currentSituation,
        variables: state.worldState.variables,
        turn: state.worldState.turn,
      );

      final result = await _processActionUseCase(
        request,
        action,
      );

      // Merge result back into a new WorldState
      final mergedLogs = [...state.worldState.log, ...result.logs];

      var newWorldState = state.worldState.copyWith(
        player: result.player,
        actors: result.actors,
        currentSituation: result.currentSituation,
        variables: result.variables,
        turn: result.newTurn,
        log: mergedLogs,
        isGameOver: result.isGameOver,
        gameOverReason: result.gameOverReason,
      );

      // Update available actions based on situation
      final availableActions = _getAvailableActions(newWorldState);

      // Check for end of combat
      if (!newWorldState.isInCombat &&
          state.worldState.isInCombat &&
          !newWorldState.isGameOver) {
        // Combat ended, offer to spawn new monster or rest
        newWorldState = newWorldState.copyWith(
          log: [...newWorldState.log, '', 'What will you do now?'],
        );
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
          worldState: state.worldState.copyWith(
            log: [...state.worldState.log, 'Error: $e'],
          ),
          isLoading: false,
        ),
      );
    }
  }

  // New private helpers extracted for clarity
  Future<void> _handleDefend(Emitter<GameState> emit) async {
    await _handlePerformAction(const Action.defend(), emit);
  }

  Future<void> _handleRest(Emitter<GameState> emit) async {
    await _handlePerformAction(const Action.rest(), emit);
  }

  // Extracted event handlers
  Future<void> _handleStartGame(Emitter<GameState> emit) async {
    final newWorldState = state.worldState.copyWith(
      log: [...state.worldState.log, 'You begin your journey...'],
    );
    emit(_createGameState(newWorldState));
    add(const GameEvent.spawnMonster());
  }

  Future<void> _handleSpawnMonster(Emitter<GameState> emit) async {
    final monster = MonsterRepository.random();
    var newWorldState = state.worldState.copyWith(
      actors: {...state.worldState.actors, monster.displayName: monster},
      currentSituation: Situation.combat(
        monsterName: monster.displayName,
        description: 'A wild ${monster.displayName} appears!',
      ),
    );
    newWorldState = newWorldState.copyWith(
      log: [...newWorldState.log, 'A wild ${monster.displayName} appears!'],
    );
    emit(_createGameState(newWorldState));
  }

  Future<void> _handleAttack(Emitter<GameState> emit) async {
    final opponent = state.worldState.getCurrentOpponent();
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
    final opponent = state.worldState.getCurrentOpponent();
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
