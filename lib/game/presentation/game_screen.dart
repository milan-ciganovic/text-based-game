import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/game/cubit/game_bloc.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/world_state.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text RPG')),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          final worldState = state.worldState;
          return Column(
            children: [
              _PlayerStatus(worldState),
              const Divider(height: 1),
              Expanded(child: _GameLog(worldState)),
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
  const _PlayerStatus(this.worldState);
  final WorldState worldState;

  @override
  Widget build(BuildContext context) {
    final player = worldState.player;
    final opponent = worldState.getCurrentOpponent();

    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.black12,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _ActorDisplay(actor: player, isPlayer: true),
              if (opponent != null)
                _ActorDisplay(actor: opponent, isPlayer: false),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Turn: ${worldState.turn}',
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _ActorDisplay extends StatelessWidget {
  const _ActorDisplay({
    required this.actor,
    required this.isPlayer,
  });

  final Actor actor;
  final bool isPlayer;

  @override
  Widget build(BuildContext context) {
    return actor.when(
      player: (name, health, maxHealth, exp, level, _, _, _) {
        final percentage = health / maxHealth;
        final barColor = percentage > 0.5
            ? Colors.green
            : percentage > 0.25
            ? Colors.orange
            : Colors.red;

        return Expanded(
          child: Column(
            crossAxisAlignment: isPlayer
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                '$name (Lvl $level)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('HP: $health / $maxHealth'),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 100,
                    height: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: percentage,
                        backgroundColor: Colors.grey[700],
                        valueColor: AlwaysStoppedAnimation<Color>(barColor),
                      ),
                    ),
                  ),
                ],
              ),
              if (isPlayer)
                Text('EXP: $exp', style: const TextStyle(fontSize: 10)),
            ],
          ),
        );
      },
      monster: (name, health, maxHealth, exp) {
        final percentage = health / maxHealth;
        final barColor = percentage > 0.5
            ? Colors.green
            : percentage > 0.25
            ? Colors.orange
            : Colors.red;

        return Expanded(
          child: Column(
            crossAxisAlignment: isPlayer
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('HP: $health / $maxHealth'),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 100,
                    height: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: percentage,
                        backgroundColor: Colors.grey[700],
                        valueColor: AlwaysStoppedAnimation<Color>(barColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      npc: (name, description) {
        return Expanded(
          child: Column(
            crossAxisAlignment: isPlayer
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 10),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _GameLog extends StatelessWidget {
  const _GameLog(this.worldState);
  final WorldState worldState;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: worldState.log.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            worldState.log[index],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
      reverse: true,
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar(this.state);
  final GameState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GameBloc>();
    final worldState = state.worldState;
    final isLoading = state.isLoading;

    if (worldState.isGameOver) {
      return Container(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              Text(
                worldState.gameOverReason,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => cubit.add(const GameEvent.startGame()),
                child: const Text('Restart Game'),
              ),
            ],
          ),
        ),
      );
    }

    if (worldState.isInCombat) {
      return Container(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () => cubit.add(const GameEvent.attack()),
                child: const Text('Attack'),
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () => cubit.add(const GameEvent.defend()),
                child: const Text('Defend'),
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () => cubit.add(const GameEvent.flee()),
                child: const Text('Flee'),
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () => cubit.add(const GameEvent.inspectOpponent()),
                child: const Text('Inspect'),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: isLoading
                ? null
                : () => cubit.add(const GameEvent.rest()),
            child: const Text('Rest'),
          ),
          ElevatedButton(
            onPressed: isLoading
                ? null
                : () => cubit.add(const GameEvent.spawnMonster()),
            child: const Text('Search for Battle'),
          ),
        ],
      ),
    );
  }
}
