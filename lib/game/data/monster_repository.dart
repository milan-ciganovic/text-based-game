import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/monster.dart';

@lazySingleton
class MonsterRepository {
  static final _random = Random();

  static final _monsters = [
    const Monster(name: 'Goblin', health: 6, damage: 2),
    const Monster(name: 'Skeleton', health: 8, damage: 3),
    const Monster(name: 'Wolf', health: 5, damage: 2),
  ];

  static Monster random() {
    final m = _monsters[_random.nextInt(_monsters.length)];
    return m.copyWith(); // clone for immutability
  }
}
