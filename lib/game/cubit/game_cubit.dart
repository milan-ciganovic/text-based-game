import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/game/cubit/game_state.dart';
import 'package:untitled1/game/data/monster_repository.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/situation.dart';
import 'package:untitled1/game/models/world_state.dart';
import 'package:untitled1/game/service/game_engine.dart';

@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit(this._gameEngine)
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
      );
  final GameEngine _gameEngine;

  void startGame() {
    final newWorldState = state.worldState.addLog('You begin your journey...');
    emit(_createGameState(newWorldState));
    spawnMonster();
  }

  void spawnMonster() {
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
  }

  Future<void> performAction(Action action) async {
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

  void attack() {
    performAction(const Action.attack(targetName: 'opponent'));
  }

  void defend() {
    performAction(const Action.defend());
  }

  void flee() {
    performAction(const Action.flee());
  }

  void rest() {
    performAction(const Action.rest());
  }

  void inspectOpponent() {
    final opponent = state.worldState.getCurrentOpponent();
    if (opponent != null) {
      performAction(Action.inspect(targetName: opponent.displayName));
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
