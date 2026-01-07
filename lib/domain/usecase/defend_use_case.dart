import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/actor.dart';
import 'package:untitled1/domain/model/game_model.dart';
import 'package:untitled1/service/engine_state.dart';

@injectable
class DefendUseCase {
  Future<GameResult?> call(EngineState state) async {
    state.player = state.player.when(
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
      monster: (_, _, _, _) => state.player,
      npc: (_, _) => state.player,
    );
    state.logs.add('You take a defensive stance.');
    return null;
  }
}
