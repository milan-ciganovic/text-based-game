import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/situation.dart';
import 'package:untitled1/service/engine_state.dart';

@injectable
class FleeUseCase {
  Future<void> call(EngineState s) async {
    final isInCombat =
        s.currentSituation?.maybeWhen(
          combat: (_, _) => true,
          orElse: () => false,
        ) ??
        false;

    if (!isInCombat) {
      s.logs.add('You are not in combat!');
      return;
    }

    final hasFledSuccessfully = DateTime.now().microsecond.isEven;

    if (hasFledSuccessfully) {
      s.currentSituation = null;
      s.logs.add('You flee from combat!');
    } else {
      s.logs.add('You fail to escape!');
    }

    return;
  }
}
