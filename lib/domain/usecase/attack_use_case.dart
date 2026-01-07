import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/action.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';

@injectable
class AttackUseCase {
  /// Attack action: damage opponent and handle combat resolution
  Future<WorldState> call(WorldState world, Action action) async {
    int? customDamage;

    action.maybeWhen(
      attack: (_, damage) => customDamage = damage,
      orElse: () {},
    );

    final opponent = world.currentOpponent;
    if (opponent == null) {
      return world.withLog('No opponent to attack!');
    }

    final damage = customDamage ?? _calculateDamage(world.player);

    final damagedOpponent = opponent.when(
      player:
          (
            name,
            health,
            maxHealth,
            exp,
            level,
            gold,
            isDefending,
            currentLocation,
          ) => Actor.player(
            name: name,
            health: health - damage,
            maxHealth: maxHealth,
            experience: exp,
            level: level,
            gold: gold,
            isDefending: isDefending,
            currentLocation: currentLocation,
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

    // Start with attack log and update opponent
    var result = world
        .withLog('You strike the ${opponent.displayName} for $damage damage!')
        .withActor(opponent.displayName, damagedOpponent);

    // Handle defeated opponent with chaining
    if (!damagedOpponent.isAlive) {
      result = result.withLog('The ${opponent.displayName} is defeated!');

      final expGain = opponent.experienceReward;
      if (expGain > 0) {
        final leveledPlayer = _awardExperienceToPlayer(result.player, expGain);
        result = result
            .withLog('You gain $expGain experience!')
            .withPlayer(leveledPlayer);
      }

      result = result.endCombat();
    }

    return result;
  }

  int _calculateDamage(Actor actor) {
    final baseHealth = actor.when(
      player: (_, _, maxHealth, _, _, _, _, _) => maxHealth,
      monster: (_, _, maxHealth, _) => maxHealth,
      npc: (_, _) => 10,
    );

    return (baseHealth ~/ 5) + (DateTime.now().microsecond % 3);
  }

  Actor _awardExperienceToPlayer(Actor player, int experience) {
    return player.when(
      player:
          (
            name,
            health,
            maxHealth,
            currentExp,
            level,
            gold,
            isDefending,
            currentLocation,
          ) {
            final newExp = currentExp + experience;
            final expNeeded = level * 100;

            if (newExp >= expNeeded) {
              return Actor.player(
                name: name,
                health: health,
                maxHealth: maxHealth + 10,
                experience: newExp - expNeeded,
                level: level + 1,
                gold: gold,
                isDefending: isDefending,
                currentLocation: currentLocation,
              );
            } else {
              return Actor.player(
                name: name,
                health: health,
                maxHealth: maxHealth,
                experience: newExp,
                level: level,
                gold: gold,
                isDefending: isDefending,
                currentLocation: currentLocation,
              );
            }
          },
      monster: (_, _, _, _) => player,
      npc: (_, _) => player,
    );
  }
}
