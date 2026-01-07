import 'package:untitled1/domain/model/action.dart';
import 'package:untitled1/domain/model/game_model.dart';
import 'package:untitled1/service/engine_state.dart';

/// Minimal contract for action use-cases
abstract interface class ActionUseCase {
  /// Execute the action and mutate the provided engine state as needed.
  /// Return a [GameResult] only when the full processing wants to short-circuit;
  /// otherwise, the coordinator will construct the final GameResult from the state.
  Future<GameResult?> call(Action action, EngineState state);
}
