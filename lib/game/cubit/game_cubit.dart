import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/player.dart' show Player;

import '../data/monster_repository.dart';
import 'game_state.dart';

@injectable
class GameCubit extends Cubit<GameState> {
  GameCubit()
    : super(GameState(player: Player(name: 'Hero', health: 20, maxHealth: 20)));

  void startGame() {
    emit(state.copyWith(log: ['You beg in your journey...']));
    spawnMonster();
  }

  void spawnMonster() {
    final monster = MonsterRepository.random();
    emit(
      state.copyWith(
        currentMonster: monster,
        log: [...state.log, 'A wild ${monster.name} appears!'],
      ),
    );
  }

  void attack() {
    final monster = state.currentMonster;
    if (monster == null) return;

    final updatedMonster = monster.copyWith(health: monster.health - 3);

    final updatedLog = [
      ...state.log,
      'You strike the ${monster.name} for 3 damage.',
    ];

    if (updatedMonster.health <= 0) {
      emit(
        state.copyWith(
          currentMonster: null,
          log: [...updatedLog, 'The ${monster.name} is slain!'],
        ),
      );
      spawnMonster();
    } else {
      emit(state.copyWith(currentMonster: updatedMonster, log: updatedLog));
    }
  }
}
