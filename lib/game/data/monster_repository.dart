import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/actor.dart';

@lazySingleton
class MonsterRepository {
  static final _random = Random();

  static final List<Actor> _monsters = [
    const Actor.monster(
      name: 'Goblin',
      health: 6,
      maxHealth: 6,
      experience: 50,
    ),
    const Actor.monster(
      name: 'Skeleton',
      health: 8,
      maxHealth: 8,
      experience: 75,
    ),
    const Actor.monster(name: 'Wolf', health: 5, maxHealth: 5, experience: 40),
    const Actor.monster(
      name: 'Orc',
      health: 12,
      maxHealth: 12,
      experience: 100,
    ),
    const Actor.monster(
      name: 'Troll',
      health: 15,
      maxHealth: 15,
      experience: 150,
    ),
  ];

  /// Get a random monster as an Actor
  static Actor random() {
    final prototype = _monsters[_random.nextInt(_monsters.length)];
    return Actor.monster(
      name: prototype.name,
      health: prototype.health,
      maxHealth: prototype.maxHealth,
      experience: prototype.experience,
    );
  }

  /// Get a specific monster by name
  static Actor? getByName(String name) {
    final matches = _monsters.where(
      (p) => p.name.toLowerCase() == name.toLowerCase(),
    );

    if (matches.isEmpty) return null;

    final prototype = matches.first;
    return Actor.monster(
      name: prototype.name,
      health: prototype.health,
      maxHealth: prototype.maxHealth,
      experience: prototype.experience,
    );
  }

  /// Get all available monsters
  static List<Actor> getAll() {
    return _monsters
        .map(
          (prototype) => Actor.monster(
            name: prototype.name,
            health: prototype.health,
            maxHealth: prototype.maxHealth,
            experience: prototype.experience,
          ),
        )
        .toList();
  }
}
