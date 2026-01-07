import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/game_model.dart';
import 'package:untitled1/game/service/engine_state.dart';
import 'package:untitled1/game/use_cases/action_use_case.dart';

@injectable
class DefendUseCase implements ActionUseCase {
  @override
  Future<GameResult?> call(Action action, EngineState state) async {
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
      monster: (String name, int health, int maxHealth, int exp) =>
          state.player,
      npc: (String name, String description) => state.player,
    );
    state.logs.add('You take a defensive stance.');
    return null;
  }
}
