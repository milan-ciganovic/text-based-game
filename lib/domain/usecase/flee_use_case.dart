import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';

@injectable
class FleeUseCase {
  /// Flee action: attempt to escape from combat
  Future<WorldState> call(WorldState world) async {
    if (!world.isInCombat) {
      return world.withLog('You are not in combat!');
    }

    final hasFledSuccessfully = DateTime.now().microsecond.isEven;

    return hasFledSuccessfully
        ? world.endCombat().withLog('You flee from combat!')
        : world.withLog('You fail to escape!');
  }
}
