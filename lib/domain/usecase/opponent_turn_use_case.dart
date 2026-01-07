import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/situation.dart';
import 'package:untitled1/service/engine_state.dart';

@injectable
class OpponentTurnUseCase {
  Future<void> call(EngineState s) async {
    String? opponentName;
    final cs = s.currentSituation;

    if (cs is CombatSituation) {
      opponentName = cs.monsterName;
    }

    final opponent = opponentName != null ? s.actors[opponentName] : null;
    if (opponent == null || !opponent.isAlive) return;

    final baseDamage = _calculateMonsterDamage(opponent);
    final damage = s.player.isDefending ? (baseDamage ~/ 2) : baseDamage;
    s.logs.add('The ${opponent.displayName} attacks for $damage damage!');

    s.player = s.player.when(
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
            isDefending: false,
            currentLocation: currentLocation,
          ),
      monster: (_, _, _, _) => s.player,
      npc: (_, _) => s.player,
    );

    if (!s.player.isAlive) {
      s.logs.add('You have been defeated!');
    }
    return;
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
