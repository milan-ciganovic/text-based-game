import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/action.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';

@injectable
class InspectUseCase {
  /// Inspect action: examine an actor and display their stats
  Future<WorldState> call(WorldState world, Action action) async {
    String? targetName;

    action.maybeWhen(
      inspect: (name) => targetName = name,
      orElse: () {},
    );

    if (targetName == null) {
      return world.withLog('Nothing to inspect.');
    }

    final target = world.actors[targetName] ?? world.player;
    final inspection = _getActorInspection(target);

    return world.withLog(inspection);
  }

  String _getActorInspection(Actor actor) {
    return actor.when(
      player:
          (
            String name,
            int health,
            int maxHealth,
            int exp,
            int level,
            int gold,
            bool isDefending,
            String? currentLocation,
          ) => '$name (Level $level)\nHP: $health/$maxHealth\nEXP: $exp',
      monster: (String name, int health, int maxHealth, int exp) =>
          '$name\nHP: $health/$maxHealth\nEXP Reward: $exp',
      npc: (String name, String description) => '$name\n$description',
    );
  }
}
