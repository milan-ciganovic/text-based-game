import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/presentation/bloc/game_bloc.dart';

/// A BlocObserver that prints only the newly added game logs when the
/// `GameState.worldState.log` list grows between transitions.
class GameBlocObserver extends BlocObserver {
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);

    try {
      final current = transition.currentState;
      final next = transition.nextState;

      if (current is GameState && next is GameState) {
        final oldLogs = current.worldState.log;
        final newLogs = next.worldState.log;

        if (newLogs.length > oldLogs.length) {
          final added = newLogs.sublist(oldLogs.length);
          for (final entry in added) {
            // Prefer using a tag so it's easy to filter in console.
            // Actual persistence or more advanced logging can be
            // implemented elsewhere (e.g. a logging package).
            if (kDebugMode) {
              print('[GameLog] $entry');
            }
          }
        }
      }
    } catch (_) {
      // Keep observer robust: don't let logging failures crash the app.
    }
  }
}
