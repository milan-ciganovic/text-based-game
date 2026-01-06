import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_variables.freezed.dart';

@freezed
sealed class GameVariables with _$GameVariables {
  const factory GameVariables({
    @Default(false) bool isDefending,
    String? currentLocation,
    @Default(0) int gold,
    @Default(<String, bool>{}) Map<String, bool> flags,
  }) = _GameVariables;

  const GameVariables._();

  /// Convenience: get a flag by key
  bool getFlag(String key) => flags[key] ?? false;
}
