import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';

@injectable
class DefendUseCase {
  /// Defend action: player takes a defensive stance
  Future<WorldState> call(WorldState world) async {
    final defendingPlayer = world.player.when(
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
            health: health,
            maxHealth: maxHealth,
            experience: exp,
            level: level,
            gold: gold,
            isDefending: true,
            currentLocation: currentLocation,
          ),
      monster: (_, _, _, _) => world.player,
      npc: (_, _) => world.player,
    );

    return world
        .withPlayer(defendingPlayer)
        .withLog('You take a defensive stance.');
  }
}
