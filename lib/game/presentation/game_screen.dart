import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/game/cubit/game_cubit.dart';
import 'package:untitled1/game/cubit/game_state.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text RPG')),
      body: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          return Column(
            children: [
              _PlayerStatus(state),
              const Divider(height: 1),
              Expanded(child: _GameLog(state)),
              const Divider(height: 1),
              _ActionBar(state),
            ],
          );
        },
      ),
    );
  }
}

class _PlayerStatus extends StatelessWidget {
  const _PlayerStatus(this.state);
  final GameState state;

  @override
  Widget build(BuildContext context) {
    final player = state.player;
    final monster = state.currentMonster;

    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(player.name, style: Theme.of(context).textTheme.titleMedium),
              Text('HP: ${player.health} / ${player.maxHealth}'),
            ],
          ),
          if (monster != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  monster.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text('HP: ${monster.health}'),
              ],
            ),
        ],
      ),
    );
  }
}

class _GameLog extends StatelessWidget {
  const _GameLog(this.state);
  final GameState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: state.log.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            state.log[index],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar(this.state);
  final GameState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GameCubit>();
    final hasMonster = state.currentMonster != null;

    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: hasMonster ? cubit.attack : null,
            child: const Text('Attack'),
          ),
          const ElevatedButton(onPressed: null, child: Text('Defend')),
          const ElevatedButton(onPressed: null, child: Text('Flee')),
        ],
      ),
    );
  }
}
