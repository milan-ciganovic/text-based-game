import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/game_model.dart';
import 'package:untitled1/game/models/situation.dart';
import 'package:untitled1/game/service/engine_state.dart';
import 'package:untitled1/game/use_cases/action_use_case.dart';

@injectable
class FleeUseCase implements ActionUseCase {
  @override
  Future<GameResult?> call(Action action, EngineState s) async {
    final isCombat =
        s.currentSituation?.maybeWhen(
          combat: (_, __) => true,
          orElse: () => false,
        ) ??
        false;

    if (!isCombat) {
      s.logs.add('You are not in combat!');
      return null;
    }

    final success = DateTime.now().microsecond.isEven;
    if (success) {
      s.currentSituation = null;
      s.logs.add('You flee from combat!');
    } else {
      s.logs.add('You fail to escape!');
    }

    return null;
  }
}
