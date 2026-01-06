import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/world_state.dart';

/// Main game engine that processes actions and updates world state
@injectable
class GameEngine {
  /// Process an action and return the new world state
  Future<WorldState> processAction(
    WorldState state,
    Action action,
  ) async {
    var newState = state.copyWith(turn: state.turn + 1);

    // Process action using pattern matching
    newState = await action.when(
      attack: (targetName, customDamage) =>
          _handleAttack(newState, targetName, customDamage),
      defend: () => _handleDefend(newState),
      flee: () => _handleFlee(newState),
      useItem: (itemName, targetName) =>
          _handleUseItem(newState, itemName, targetName),
      talk: (npcName) => _handleTalk(newState, npcName),
      rest: () => _handleRest(newState),
      inspect: (targetName) => _handleInspect(newState, targetName),
      custom: (name, parameters) =>
          _handleCustomAction(newState, name, parameters),
    );

    // Apply monster/NPC reactions if in combat
    if (newState.isInCombat) {
      newState = await _handleOpponentTurn(newState);
    }

    return newState;
  }

  Future<WorldState> _handleAttack(
    WorldState state,
    String targetName,
    int? customDamage,
  ) async {
    final opponent = state.getCurrentOpponent();
    if (opponent == null) {
      return state.addLog('No opponent to attack!');
    }

    final player = state.player;
    final damage = customDamage ?? _calculateDamage(player);

    var newState = state.addLog(
      'You strike the ${opponent.displayName} for $damage damage!',
    );

    // Update opponent health
    final updatedOpponent = opponent.when(
      player: (name, health, maxHealth, exp, level) => Actor.player(
        name: name,
        health: health - damage,
        maxHealth: maxHealth,
        experience: exp,
        level: level,
      ),
      monster: (name, health, maxHealth, exp) => Actor.monster(
        name: name,
        health: health - damage,
        maxHealth: maxHealth,
        experience: exp,
      ),
      npc: (name, description) =>
          Actor.npc(name: name, description: description),
    );

    newState = newState.copyWith(
      actors: {...newState.actors, opponent.displayName: updatedOpponent},
    );

    // Check if opponent is defeated
    if (!updatedOpponent.isAlive) {
      newState = newState.addLog(
        'The ${opponent.displayName} is defeated!',
      );

      // Award experience
      final expGain = opponent.experienceReward;
      if (expGain > 0) {
        newState = newState.addLog('You gain $expGain experience!');
        // Update player with experience
        newState = _awardExperience(newState, expGain);
      }

      // End combat
      newState = newState.copyWith(currentSituation: null);
    }

    return newState;
  }

  Future<WorldState> _handleDefend(WorldState state) async {
    return state.setIsDefending(value: true)
      ..addLog('You take a defensive stance.');
  }

  Future<WorldState> _handleFlee(WorldState state) async {
    if (!state.isInCombat) {
      return state.addLog('You are not in combat!');
    }

    // 50% chance to flee
    final success = DateTime.now().microsecond.isEven;
    if (success) {
      return state.copyWith(currentSituation: null)
        ..addLog('You flee from combat!');
    } else {
      return state.addLog('You fail to escape!');
    }
  }

  Future<WorldState> _handleUseItem(
    WorldState state,
    String itemName,
    String? targetName,
  ) async {
    return state.addLog('You used $itemName.');
  }

  Future<WorldState> _handleTalk(WorldState state, String npcName) async {
    return state.addLog('You talked to $npcName.');
  }

  Future<WorldState> _handleRest(WorldState state) async {
    final player = state.player;
    final healthGain = (player.isPlayer ? player.maxHealth ~/ 4 : 0);

    final updatedPlayer = player.when(
      player: (name, health, maxHealth, exp, level) => Actor.player(
        name: name,
        health: (health + healthGain).clamp(0, maxHealth),
        maxHealth: maxHealth,
        experience: exp,
        level: level,
      ),
      monster: (name, health, maxHealth, exp) => Actor.monster(
        name: name,
        health: health,
        maxHealth: maxHealth,
        experience: exp,
      ),
      npc: (name, description) => player,
    );

    return state.copyWith(
      player: updatedPlayer,
    )..addLog('You rest and recover $healthGain health.');
  }

  Future<WorldState> _handleInspect(
    WorldState state,
    String targetName,
  ) async {
    final target = state.actors[targetName] ?? state.player;
    final inspection = _getActorInspection(target);

    return state.addLog(inspection);
  }

  Future<WorldState> _handleCustomAction(
    WorldState state,
    String name,
    Map<String, dynamic> parameters,
  ) async {
    return state.addLog('Custom action: $name');
  }

  Future<WorldState> _handleOpponentTurn(WorldState state) async {
    final opponent = state.getCurrentOpponent();
    if (opponent == null || !opponent.isAlive) return state;

    // Opponent attack with delay
    await Future<void>.delayed(const Duration(milliseconds: 500));

    final isDefending = state.getIsDefending();
    final baseDamage = _calculateMonsterDamage(opponent);
    final damage = isDefending ? (baseDamage ~/ 2) : baseDamage;

    var newState = state.addLog(
      'The ${opponent.displayName} attacks for $damage damage!',
    );

    // Update player health
    final updatedPlayer = state.player.when(
      player: (name, health, maxHealth, exp, level) => Actor.player(
        name: name,
        health: (health - damage).clamp(0, maxHealth),
        maxHealth: maxHealth,
        experience: exp,
        level: level,
      ),
      monster: (_, _, _, _) => state.player,
      npc: (_, _) => state.player,
    );

    newState = newState.copyWith(player: updatedPlayer);

    // Clear defending flag
    newState = newState.setIsDefending(value: false);

    // Check if player is defeated
    if (!updatedPlayer.isAlive) {
      newState = newState.copyWith(
        isGameOver: true,
        gameOverReason: 'You have been defeated!',
      );
      newState = newState.addLog('You have been defeated!');
    }

    return newState;
  }

  int _calculateDamage(Actor actor) {
    // Base damage with some randomness
    final baseHealth = actor.when(
      player: (_, health, maxHealth, _, _) => maxHealth,
      monster: (_, health, maxHealth, _) => maxHealth,
      npc: (_, _) => 10,
    );

    return (baseHealth ~/ 5) + (DateTime.now().microsecond % 3);
  }

  int _calculateMonsterDamage(Actor opponent) {
    final baseDamage = opponent.when(
      player: (_, _, _, _, _) => 0,
      monster: (_, health, maxHealth, _) => (maxHealth ~/ 6) + 1,
      npc: (_, _) => 0,
    );

    return baseDamage + (DateTime.now().microsecond % 3);
  }

  WorldState _awardExperience(WorldState state, int experience) {
    final player = state.player;
    return player.when(
      player: (name, health, maxHealth, currentExp, level) {
        final newExp = currentExp + experience;
        final expNeeded = level * 100; // Experience needed for next level

        if (newExp >= expNeeded) {
          final newState = state.copyWith(
            player: Actor.player(
              name: name,
              health: health,
              maxHealth: maxHealth + 10,
              experience: newExp - expNeeded,
              level: level + 1,
            ),
          );
          return newState.addLog('You leveled up to level ${level + 1}!');
        } else {
          return state.copyWith(
            player: Actor.player(
              name: name,
              health: health,
              maxHealth: maxHealth,
              experience: newExp,
              level: level,
            ),
          );
        }
      },
      monster: (_, _, _, _) => state,
      npc: (_, _) => state,
    );
  }

  String _getActorInspection(Actor actor) {
    return actor.when(
      player: (name, health, maxHealth, exp, level) =>
          '$name (Level $level)\nHP: $health/$maxHealth\nEXP: $exp',
      monster: (name, health, maxHealth, exp) =>
          '$name\nHP: $health/$maxHealth\nEXP Reward: $exp',
      npc: (name, description) => '$name\n$description',
    );
  }
}
