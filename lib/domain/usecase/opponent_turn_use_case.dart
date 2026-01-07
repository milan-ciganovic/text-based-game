import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';

@injectable
class OpponentTurnUseCase {
  /// Process opponent's turn: attack player if in combat
  Future<WorldState> call(WorldState world) async {
    final opponent = world.currentOpponent;
    if (opponent == null || !opponent.isAlive) {
      return world;
    }

    final baseDamage = _calculateMonsterDamage(opponent);
    final damage = world.player.isDefending ? (baseDamage ~/ 2) : baseDamage;

    final damagedPlayer = world.player.when(
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
            health: (health - damage).clamp(0, maxHealth),
            maxHealth: maxHealth,
            experience: exp,
            level: level,
            gold: gold,
            isDefending: false, // Reset defending after being attacked
            currentLocation: currentLocation,
          ),
      monster: (_, _, _, _) => world.player,
      npc: (_, _) => world.player,
    );

    return world
        .withLog('The ${opponent.displayName} attacks for $damage damage!')
        .withPlayer(damagedPlayer)
        .applyIf(
          !damagedPlayer.isAlive,
          (w) => w
              .withLog('You have been defeated!')
              .gameOver('Defeated by ${opponent.displayName}'),
        );
  }

  int _calculateMonsterDamage(Actor opponent) {
    final baseDamage = opponent.when(
      player: (_, _, _, _, _, _, _, _) => 0,
      monster: (_, _, maxHealth, _) => (maxHealth ~/ 6) + 1,
      npc: (_, _) => 0,
    );

    return baseDamage + (DateTime.now().microsecond % 3);
  }
}
