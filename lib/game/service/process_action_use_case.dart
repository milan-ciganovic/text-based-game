import 'package:injectable/injectable.dart';
import 'package:untitled1/game/models/action.dart';
import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/game_model.dart';
import 'package:untitled1/game/service/engine_state.dart';
import 'package:untitled1/game/use_cases/attack_use_case.dart';
import 'package:untitled1/game/use_cases/defend_use_case.dart';
import 'package:untitled1/game/use_cases/flee_use_case.dart';
import 'package:untitled1/game/use_cases/inspect_use_case.dart';
import 'package:untitled1/game/use_cases/opponent_turn_use_case.dart';
import 'package:untitled1/game/use_cases/rest_use_case.dart';

/// Main use-case that processes actions and returns a GameResult
@injectable
class ProcessActionUseCase {
  const ProcessActionUseCase(
    this._attack,
    this._defend,
    this._flee,
    this._rest,
    this._inspect,
    this._opponentTurn,
  );

  final AttackUseCase _attack;
  final DefendUseCase _defend;
  final FleeUseCase _flee;
  final RestUseCase _rest;
  final InspectUseCase _inspect;
  final OpponentTurnUseCase _opponentTurn;

  /// Use-case entry point: call processes an action and returns the result DTO
  Future<GameResult> call(GameRequest request, Action action) async {
    final engineState = EngineState(
      player: request.player,
      actors: Map<String, Actor>.from(request.actors),
      currentSituation: request.currentSituation,
      logs: <String>[],
    );

    await action.when(
      attack: (_, _) => _attack(action, engineState),
      defend: () => _defend(action, engineState),
      flee: () => _flee(action, engineState),
      useItem: (itemName, _) => _handleUseItem(engineState, itemName),
      talk: (npcName) async => _handleTalk(engineState, npcName),
      rest: () => _rest(action, engineState),
      inspect: (_) => _inspect(action, engineState),
    );

    // Opponent turn if in combat (delegated)
    await _opponentTurn(engineState);

    // Build result
    final result = GameResult(
      player: engineState.player,
      actors: engineState.actors,
      currentSituation: engineState.currentSituation,
      newTurn: request.turn + 1,
      logs: engineState.logs,
      isGameOver: !engineState.player.isAlive,
      gameOverReason: !engineState.player.isAlive
          ? 'You have been defeated!'
          : '',
    );

    return result;
  }

  Future<void> _handleUseItem(EngineState s, String itemName) async {
    s.logs.add('You used $itemName.');
  }

  Future<void> _handleTalk(EngineState s, String npcName) async {
    s.logs.add('You talked to $npcName.');
  }
}
