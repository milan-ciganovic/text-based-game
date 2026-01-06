import 'package:freezed_annotation/freezed_annotation.dart';

part 'monster.freezed.dart';

@freezed
sealed class Monster with _$Monster {
  const factory Monster({
    required String name,
    required int health,
    required int damage,
  }) = _Monster;
}
