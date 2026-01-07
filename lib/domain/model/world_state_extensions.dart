import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/situation.dart';
import 'package:untitled1/domain/model/world_state.dart';

/// Extensions for querying WorldState
extension WorldStateX on WorldState {
  /// Get current opponent in combat
  Actor? get currentOpponent {
    final situation = currentSituation;
    if (situation == null) return null;

    return situation.when(
      combat: (String monsterName, String _) => actors[monsterName],
      exploration: (_, _, _) => null,
      rest: (_) => null,
      dialogue: (_, _) => null,
      custom: (_, _) => null,
    );
  }

  /// Check if player is in combat
  bool get isInCombat {
    final situation = currentSituation;
    if (situation == null) return false;

    return situation.when(
      combat: (_, _) => true,
      exploration: (_, _, _) => false,
      rest: (_) => false,
      dialogue: (_, _) => false,
      custom: (_, _) => false,
    );
  }

  /// Check if game is over
  bool get isGameEnded => isGameOver || !player.isAlive;
}

/// Extensions for creating derived states
extension WorldStateTransformations on WorldState {
  /// Create a new state with updated player
  WorldState withPlayer(Actor newPlayer) => copyWith(player: newPlayer);

  /// Create a new state with an actor updated
  WorldState withActor(String name, Actor actor) {
    final newActors = Map<String, Actor>.from(actors);
    newActors[name] = actor;
    return copyWith(actors: newActors);
  }

  /// Create a new state with a log entry added
  WorldState withLog(String message) {
    return copyWith(log: [...log, message]);
  }

  /// Create a new state with multiple log entries added
  WorldState withLogs(List<String> messages) {
    return copyWith(log: [...log, ...messages]);
  }

  /// Create a new state advancing to next turn
  WorldState nextTurn() => copyWith(turn: turn + 1);

  /// Create a new state marking game over
  WorldState gameOver(String reason) => copyWith(
    isGameOver: true,
    gameOverReason: reason,
  );

  /// Create a new state clearing combat situation
  WorldState endCombat() => copyWith(currentSituation: null);
}

/// Extensions for complex multi-step transformations
extension WorldStateComplexTransformations on WorldState {
  /// Apply a function that transforms the state
  /// (useful for chaining complex logic)
  WorldState apply(WorldState Function(WorldState) transform) =>
      transform(this);

  /// Apply multiple transformations in sequence
  WorldState applyAll(List<WorldState Function(WorldState)> transforms) {
    var current = this;
    for (final transform in transforms) {
      current = transform(current);
    }
    return current;
  }

  /// Conditional transformation
  WorldState applyIf(
    bool condition,
    WorldState Function(WorldState) transform,
  ) {
    return condition ? transform(this) : this;
  }
}
