import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/actor.dart';

@lazySingleton
class MonsterRepository {
  static final _random = Random();

  static final _monsters = [
    (
      name: 'Goblin',
      health: 6,
      maxHealth: 6,
      experience: 50,
    ),
    (
      name: 'Skeleton',
      health: 8,
      maxHealth: 8,
      experience: 75,
    ),
    (
      name: 'Wolf',
      health: 5,
      maxHealth: 5,
      experience: 40,
    ),
    (
      name: 'Orc',
      health: 12,
      maxHealth: 12,
      experience: 100,
    ),
    (
      name: 'Troll',
      health: 15,
      maxHealth: 15,
      experience: 150,
    ),
  ];

  /// Get a random monster as an Actor
  static Actor random() {
    final m = _monsters[_random.nextInt(_monsters.length)];
    return Actor.monster(
      name: m.name,
      health: m.health,
      maxHealth: m.maxHealth,
      experience: m.experience,
    );
  }

  /// Get a specific monster by name
  static Actor? getByName(String name) {
    for (final m in _monsters) {
      if (m.name.toLowerCase() == name.toLowerCase()) {
        return Actor.monster(
          name: m.name,
          health: m.health,
          maxHealth: m.maxHealth,
          experience: m.experience,
        );
      }
    }
    return null;
  }

  /// Get all available monsters
  static List<Actor> getAll() {
    return _monsters
        .map(
          (m) => Actor.monster(
            name: m.name,
            health: m.health,
            maxHealth: m.maxHealth,
            experience: m.experience,
          ),
        )
        .toList();
  }
}
