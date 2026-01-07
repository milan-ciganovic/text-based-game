import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/game_usecase.dart';
import 'package:untitled1/game/models/game_variables.dart';
import 'package:untitled1/game/models/situation.dart';
import 'package:untitled1/game/models/world_state.dart';

/// Main use-case that processes actions and returns a GameResult
@injectable
class ProcessActionUseCase {
  /// Use-case entry point: call processes an action and returns the result DTO
  Future<GameResult> call(
    GameRequest request,
    Action action,
  ) async {
    // Convert request into mutable local representations via internal state
    final engineState = _EngineState(
      player: request.player,
      actors: Map<String, Actor>.from(request.actors),
      currentSituation: request.currentSituation,
      variables: request.variables,
      logs: <String>[],
    );

    // Process action using pattern matching but delegate logic to private handlers
    await action.when(
      attack: (targetName, customDamage) async =>
          _handleAttack(engineState, targetName, customDamage),
      defend: () async => _handleDefend(engineState),
      flee: () async => _handleFlee(engineState),
      useItem: (itemName, targetName) async =>
          _handleUseItem(engineState, itemName, targetName),
      talk: (npcName) async => _handleTalk(engineState, npcName),
      rest: () async => _handleRest(engineState),
      inspect: (targetName) async => _handleInspect(engineState, targetName),
      custom: (name, parameters) async =>
          _handleCustomAction(engineState, name, parameters),
    );

    // Opponent turn if in combat
    await _handleOpponentTurn(engineState);

    // Build result
    final result = GameResult(
      player: engineState.player,
      actors: engineState.actors,
      currentSituation: engineState.currentSituation,
      variables: engineState.variables,
      newTurn: request.turn + 1,
      logs: engineState.logs,
      isGameOver: !engineState.player.isAlive,
      gameOverReason: !engineState.player.isAlive
          ? 'You have been defeated!'
          : '',
    );

    return result;
  }

  // Private handlers ------------------------------------------------------
  Future<void> _handleAttack(
    _EngineState s,
    String targetName,
    int? customDamage,
  ) async {
    final opponent = _getCurrentOpponent(s);
    if (opponent == null) {
      s.addLog('No opponent to attack!');
      return;
    }

    final damage = customDamage ?? _calculateDamage(s.player);
    s.addLog('You strike the ${opponent.displayName} for $damage damage!');

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

    s.updateActor(opponent.displayName, updatedOpponent);

    if (!updatedOpponent.isAlive) {
      s.addLog('The ${opponent.displayName} is defeated!');
      final expGain = opponent.experienceReward;
      if (expGain > 0) {
        s
          ..addLog('You gain $expGain experience!')
          ..player = _awardExperienceToPlayer(s.player, expGain);
      }

      s.currentSituation = null;
    }
  }

  Future<void> _handleDefend(_EngineState s) async {
    s
      ..variables = s.variables.copyWith(isDefending: true)
      ..addLog('You take a defensive stance.');
  }

  Future<void> _handleFlee(_EngineState s) async {
    final isCombat =
        s.currentSituation?.whenOrNull(combat: (_, _) => true) ?? false;
    if (!isCombat) {
      s.addLog('You are not in combat!');
      return;
    }
    final success = DateTime.now().microsecond.isEven;
    if (success) {
      s
        ..currentSituation = null
        ..addLog('You flee from combat!');
    } else {
      s.addLog('You fail to escape!');
    }
  }

  Future<void> _handleUseItem(
    _EngineState s,
    String itemName,
    String? targetName,
  ) async {
    s.addLog('You used $itemName.');
  }

  Future<void> _handleTalk(_EngineState s, String npcName) async {
    s.addLog('You talked to $npcName.');
  }

  Future<void> _handleRest(_EngineState s) async {
    final healthGain = (s.player.isPlayer ? s.player.maxHealth ~/ 4 : 0);
    s
      ..player = s.player.when(
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
        npc: (name, description) => s.player,
      )
      ..addLog('You rest and recover $healthGain health.');
  }

  Future<void> _handleInspect(_EngineState s, String targetName) async {
    final target = s.actors[targetName] ?? s.player;
    s.addLog(_getActorInspection(target));
  }

  Future<void> _handleCustomAction(
    _EngineState s,
    String name,
    Map<String, dynamic> parameters,
  ) async {
    s.addLog('Custom action: $name');
  }

  Future<void> _handleOpponentTurn(_EngineState s) async {
    final opponent = _getCurrentOpponent(s);
    if (opponent == null || !opponent.isAlive) return;

    // simple delay omitted in use-case
    final baseDamage = _calculateMonsterDamage(opponent);
    final damage = s.variables.isDefending ? (baseDamage ~/ 2) : baseDamage;
    s
      ..addLog('The ${opponent.displayName} attacks for $damage damage!')
      ..player = s.player.when(
        player: (name, health, maxHealth, exp, level) => Actor.player(
          name: name,
          health: (health - damage).clamp(0, maxHealth),
          maxHealth: maxHealth,
          experience: exp,
          level: level,
        ),
        monster: (_, _, _, _) => s.player,
        npc: (_, _) => s.player,
      )
      ..variables = s.variables.copyWith(isDefending: false);

    if (!s.player.isAlive) {
      s.addLog('You have been defeated!');
    }
  }

  // Small helpers ---------------------------------------------------------
  Actor? _getCurrentOpponent(_EngineState s) {
    final monsterName = s.currentSituation?.whenOrNull(
      combat: (String monsterName, String _) => monsterName,
    );
    if (monsterName == null) return null;
    return s.actors[monsterName];
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

  Actor _awardExperienceToPlayer(Actor player, int experience) {
    return player.when(
      player: (name, health, maxHealth, currentExp, level) {
        final newExp = currentExp + experience;
        final expNeeded = level * 100; // Experience needed for next level

        if (newExp >= expNeeded) {
          return Actor.player(
            name: name,
            health: health,
            maxHealth: maxHealth + 10,
            experience: newExp - expNeeded,
            level: level + 1,
          );
        } else {
          return Actor.player(
            name: name,
            health: health,
            maxHealth: maxHealth,
            experience: newExp,
            level: level,
          );
        }
      },
      monster: (_, _, _, _) => player,
      npc: (_, _) => player,
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

// Internal mutable engine state used only inside ProcessActionUseCase.call
class _EngineState {
  _EngineState({
    required this.player,
    required this.actors,
    required this.currentSituation,
    required this.variables,
    required this.logs,
  });
  Actor player;
  Map<String, Actor> actors;
  Situation? currentSituation;
  GameVariables variables;
  List<String> logs;

  void addLog(String entry) => logs = [...logs, entry];
  void updateActor(String key, Actor actor) => actors[key] = actor;
}
