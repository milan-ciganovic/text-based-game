import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/action.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/game_model.dart';
import 'package:untitled1/domain/model/situation.dart';
import 'package:untitled1/domain/usecase/action_use_case.dart';
import 'package:untitled1/service/engine_state.dart';

@injectable
class AttackUseCase implements ActionUseCase {
  @override
  Future<GameResult?> call(Action action, EngineState state) async {
    await action.when(
      attack: (targetName, customDamage) async {
        final opponent = _getCurrentOpponent(state);
        if (opponent == null) {
          state.logs.add('No opponent to attack!');
          return null;
        }

        final damage = customDamage ?? _calculateDamage(state.player);
        state.logs.add(
          'You strike the ${opponent.displayName} for $damage damage!',
        );

        final updatedOpponent = opponent.when(
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

        state.updateActor(opponent.displayName, updatedOpponent);

        if (!updatedOpponent.isAlive) {
          state.logs.add('The ${opponent.displayName} is defeated!');
          final expGain = opponent.experienceReward;
          if (expGain > 0) {
            state.logs.add('You gain $expGain experience!');
            state.player = _awardExperienceToPlayer(state.player, expGain);
          }

          state.currentSituation = null;
        }

        return null;
      },
      defend: () async => null,
      flee: () async => null,
      useItem: (_, _) async => null,
      talk: (_) async => null,
      rest: () async => null,
      inspect: (_) async => null,
    );

    return null;
  }

  // helpers moved from ProcessActionUseCase
  Actor? _getCurrentOpponent(EngineState s) {
    final monsterName = s.currentSituation?.whenOrNull(
      combat: (String monsterName, String _) => monsterName,
    );
    if (monsterName == null) return null;
    return s.actors[monsterName];
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
