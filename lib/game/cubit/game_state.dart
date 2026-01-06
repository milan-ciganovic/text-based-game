import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/monster.dart';
import '../models/player.dart';

part 'game_state.freezed.dart';

@freezed
sealed class GameState with _$GameState {
  const factory GameState({
    required Player player,
    Monster? currentMonster,
    @Default([]) List<String> log,
    @Default(false) bool isGameOver,
  }) = _GameState;
}
