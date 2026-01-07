import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/game_model.dart';
import 'package:untitled1/game/service/engine_state.dart';
import 'package:untitled1/game/use_cases/action_use_case.dart';

@injectable
class InspectUseCase implements ActionUseCase {
  @override
  Future<GameResult?> call(Action action, EngineState s) async {
    action.maybeWhen(
      inspect: (String targetName) {
        final target = s.actors[targetName] ?? s.player;
        s.logs.add(_getActorInspection(target));
      },
      orElse: () {},
    );

    return null;
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
