import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/situation.dart';

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
    @Default(0) int turn,
    @Default(false) bool isGameOver,
    @Default('') String gameOverReason,
  }) = _WorldState;

  const WorldState._();

  /// Get current opponent in combat
  Actor? getCurrentOpponent() {
    // Use the isInCombat helper to early-return when not in combat,
    // then leverage maybeWhen to safely extract the monster name.
    if (!isInCombat) return null;

    final monsterName = currentSituation?.maybeWhen(
      combat: (String monsterName, String _) => monsterName,
      orElse: () => null,
    );

    return monsterName != null ? actors[monsterName] : null;
  }

  /// Check if player is in combat
  bool get isInCombat =>
      currentSituation?.maybeWhen(
        orElse: () => false,
        combat: (_, _) => true,
      ) ??
      false;
}
