part of 'game_bloc.dart';

/// UI State for the game - wraps WorldState for BLoC
@freezed
sealed class GameState with _$GameState {
  const factory GameState({
    required WorldState worldState,
    @Default([]) List<String> availableActions,
    @Default(false) bool isLoading,
  }) = _GameState;
}
