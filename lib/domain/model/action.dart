import 'package:freezed_annotation/freezed_annotation.dart';

part 'action.freezed.dart';

/// Represents an action that a player can take in the game
@freezed
sealed class Action with _$Action {
  const factory Action.attack({
    required String targetName,
    @Default(null) int? customDamage,
  }) = _AttackAction;

  const factory Action.defend() = _DefendAction;

  const factory Action.flee() = _FleeAction;

  const factory Action.useItem({
    required String itemName,
    @Default(null) String? targetName,
  }) = _UseItemAction;

  const factory Action.talk({
    required String npcName,
  }) = _TalkAction;

  const factory Action.rest() = _RestAction;

  const factory Action.inspect({
    required String targetName,
  }) = _InspectAction;

  const Action._();

  /// Get the action name
  String get name => when(
    attack: (target, _) => 'Attack $target',
    defend: () => 'Defend',
    flee: () => 'Flee',
    useItem: (itemName, _) => 'Use $itemName',
    talk: (npcName) => 'Talk to $npcName',
    rest: () => 'Rest',
    inspect: (targetName) => 'Inspect $targetName',
  );
}
