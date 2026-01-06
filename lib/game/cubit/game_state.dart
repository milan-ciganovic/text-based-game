import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled1/game/models/world_state.dart';

part 'game_state.freezed.dart';

/// UI State for the game - wraps WorldState for BLoC
@freezed
sealed class GameState with _$GameState {
  const factory GameState({
    required WorldState worldState,
    @Default([]) List<String> availableActions,
    @Default(false) bool isLoading,
  }) = _GameState;
}
