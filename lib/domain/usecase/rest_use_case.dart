import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';

@injectable
class RestUseCase {
  /// Rest action: player recovers health
  /// Returns updated world state with healed player and log entry
  Future<WorldState> call(WorldState world) async {
    final healthGain = world.player.isPlayer ? world.player.maxHealth ~/ 4 : 0;

    final healedPlayer = world.player.when(
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
          ) => Actor.player(
            name: name,
            health: (health + healthGain).clamp(0, maxHealth),
            maxHealth: maxHealth,
            experience: exp,
            level: level,
            gold: gold,
            isDefending: isDefending,
            currentLocation: currentLocation,
          ),
      monster: (String name, int health, int maxHealth, int exp) =>
          Actor.monster(
            name: name,
            health: health,
            maxHealth: maxHealth,
            experience: exp,
          ),
      npc: (String name, String description) => world.player,
    );

    // Use immutable transformations
    return world
        .withPlayer(healedPlayer)
        .withLog('You rest and recover $healthGain health.');
  }
}
