import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/situation.dart';

/// Input DTO for the ProcessActionUseCase
class GameRequest {
  GameRequest({
    required this.player,
    required this.actors,
    required this.currentSituation,
    required this.turn,
  });
  final Actor player;
  final Map<String, Actor> actors;
  final Situation? currentSituation;
  final int turn;
}

/// Output DTO for the ProcessActionUseCase
class GameResult {
  GameResult({
    required this.player,
    required this.actors,
    required this.currentSituation,
    required this.newTurn,
    required this.logs,
    required this.isGameOver,
    required this.gameOverReason,
  });
  final Actor player;
  final Map<String, Actor> actors;
  final Situation? currentSituation;
  final int newTurn;
  final List<String> logs;
  final bool isGameOver;
  final String gameOverReason;
}
