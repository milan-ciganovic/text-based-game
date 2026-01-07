import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/game_model.dart';
import 'package:untitled1/service/engine_state.dart';

@injectable
class RestUseCase {
  Future<GameResult?> call(EngineState s) async {
    final healthGain = (s.player.isPlayer ? s.player.maxHealth ~/ 4 : 0);
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
      npc: (String name, String description) => s.player,
    );

    s.logs.add('You rest and recover $healthGain health.');
    return null;
  }
}
