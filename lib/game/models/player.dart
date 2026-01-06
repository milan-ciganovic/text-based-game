import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
sealed class Player with _$Player {
  const factory Player({
    required String name,
    required int health,
    required int maxHealth,
  }) = _Player;
}
