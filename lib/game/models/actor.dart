import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor.freezed.dart';

/// Base class for all actors in the game (Player, Monster, NPC, etc.)
@freezed
sealed class Actor with _$Actor {
  const factory Actor.player({
    required String name,
    required int health,
    required int maxHealth,
    @Default(0) int experience,
    @Default(1) int level,
  }) = _PlayerActor;

  const factory Actor.monster({
    required String name,
    required int health,
    required int maxHealth,
    @Default(0) int experience,
  }) = _MonsterActor;

  const factory Actor.npc({
    required String name,
    required String description,
  }) = _NPCActor;

  const Actor._();

  /// Get the display name
  String get displayName => when(
    player: (name, _, _, _, _) => name,
    monster: (name, _, _, _) => name,
    npc: (name, _) => name,
  );

  /// Get current HP
  int get health => when(
    player: (_, health, _, _, _) => health,
    monster: (_, health, _, _) => health,
    npc: (_, _) => 0,
  );

  /// Get max HP
  int get maxHealth => when(
    player: (_, _, maxHealth, _, _) => maxHealth,
    monster: (_, _, maxHealth, _) => maxHealth,
    npc: (_, _) => 0,
  );

  /// Get actor level (players have levels; monsters default to 1)
  int get level => when(
    player: (_, _, _, _, level) => level,
    monster: (_, _, _, _) => 1,
    npc: (_, _) => 0,
  );

  /// Get stored experience points
  int get experience => when(
    player: (_, _, _, experience, _) => experience,
    monster: (_, _, _, experience) => experience,
    npc: (_, _) => 0,
  );

  /// Check if actor is alive
  bool get isAlive => when(
    player: (_, health, _, _, _) => health > 0,
    monster: (_, health, _, _) => health > 0,
    npc: (_, _) => true,
  );

  /// Get experience reward
  int get experienceReward => when(
    player: (_, _, _, _, _) => 0,
    monster: (_, _, _, experience) => experience,
    npc: (_, _) => 0,
  );
}

extension ActorExtension on Actor {
  bool get isPlayer => when(
    player: (_, _, _, _, _) => true,
    monster: (_, _, _, _) => false,
    npc: (_, _) => false,
  );

  bool get isMonster => when(
    player: (_, _, _, _, _) => false,
    monster: (_, _, _, _) => true,
    npc: (_, _) => false,
  );

  bool get isNPC => when(
    player: (_, _, _, _, _) => false,
    monster: (_, _, _, _) => false,
    npc: (_, _) => true,
  );
}
