import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/game_variables.dart';
import 'package:untitled1/game/models/situation.dart';

part 'world_state.freezed.dart';

/// Represents the entire state of the game world
@freezed
sealed class WorldState with _$WorldState {
  const factory WorldState({
    required Actor player,
    @Default(<String, Actor>{})
    Map<String, Actor> actors, // All actors in the world
    Situation? currentSituation,
    @Default(<String>[]) List<String> log, // Game log/history
    @Default(GameVariables()) GameVariables variables, // Typed game variables
    @Default(0) int turn,
    @Default(false) bool isGameOver,
    @Default('') String gameOverReason,
  }) = _WorldState;

  const WorldState._();

  /// Get the player actor
  Actor? getPlayer() {
    return actors.values.cast<Actor?>().firstWhere(
      (actor) => actor?.isPlayer ?? false,
      orElse: () => null,
    );
  }

  /// Get current opponent in combat
  Actor? getCurrentOpponent() {
    final situation = currentSituation;
    if (situation is! CombatSituation) return null;
    return actors[situation.monsterName];
  }

  /// Check if player is in combat
  bool get isInCombat => currentSituation is CombatSituation;

  /// Set a custom variable (typed)
  WorldState setIsDefending({required bool value}) {
    return copyWith(variables: variables.copyWith(isDefending: value));
  }

  /// Get a custom variable (typed)
  bool getIsDefending() => variables.isDefending;
}

extension ActorExtension on Actor {
  bool get isPlayer => when(
    player: (_, _, _, _, _) => true,
    monster: (_, _, _, _) => false,
    npc: (_, _) => false,
  );

  bool get isMonster => when(
    player: (_, _, _, _, _) => false,
    monster: (_, _, _, _) => true,
    npc: (_, _) => false,
  );

  bool get isNPC => when(
    player: (_, _, _, _, _) => false,
    monster: (_, _, _, _) => false,
    npc: (_, _) => true,
  );
}
