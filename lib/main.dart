import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/di/di_init.dart';
import 'package:untitled1/game_bloc_observer.dart';
import 'package:untitled1/presentation/bloc/game_bloc.dart';
import 'package:untitled1/presentation/game_screen.dart';

void main() {
  configureDependencies();
  Bloc.observer = GameBlocObserver();
  runApp(const TextRPGApp());
}

class TextRPGApp extends StatelessWidget {
  const TextRPGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<GameBloc>()..add(const GameEvent.startGame()),
      child: MaterialApp(
        title: 'Text RPG',
        theme: ThemeData.dark(),
        home: const GameScreen(),
      ),
    );
  }
}
