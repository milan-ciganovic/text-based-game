import 'package:freezed_annotation/freezed_annotation.dart';

part 'situation.freezed.dart';

/// Represents the current situation/location in the game
@freezed
sealed class Situation with _$Situation {
  const factory Situation.combat({
    required String monsterName,
    @Default('A wild enemy appears!') String description,
  }) = CombatSituation;

  const factory Situation.exploration({
    required String locationName,
    required String description,
    @Default([]) List<String> availableDirections,
  }) = _ExplorationSituation;

  const factory Situation.rest({
    @Default('You rest and recover.') String description,
  }) = _RestSituation;

  const factory Situation.dialogue({
    required String npcName,
    required String dialogueText,
  }) = _DialogueSituation;

  const factory Situation.custom({
    required String name,
    required String description,
  }) = _CustomSituation;

  const Situation._();

  /// Get the situation name
  String get name => when(
    combat: (monsterName, _) => 'Combat with $monsterName',
    exploration: (locationName, _, _) => locationName,
    rest: (_) => 'Rest',
    dialogue: (npcName, _) => 'Dialogue with $npcName',
    custom: (name, _) => name,
  );

  /// Get the situation description
  String get description => when(
    combat: (_, desc) => desc,
    exploration: (_, desc, _) => desc,
    rest: (desc) => desc,
    dialogue: (_, desc) => desc,
    custom: (_, desc) => desc,
  );
}
