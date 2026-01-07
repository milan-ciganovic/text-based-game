import 'package:injectable/injectable.dart';
import 'package:untitled1/domain/model/action.dart';
import 'package:untitled1/domain/model/world_state.dart';
import 'package:untitled1/domain/model/world_state_extensions.dart';
import 'package:untitled1/domain/usecase/attack_use_case.dart';
import 'package:untitled1/domain/usecase/defend_use_case.dart';
import 'package:untitled1/domain/usecase/flee_use_case.dart';
import 'package:untitled1/domain/usecase/inspect_use_case.dart';
import 'package:untitled1/domain/usecase/opponent_turn_use_case.dart';
import 'package:untitled1/domain/usecase/rest_use_case.dart';

/// Main coordinator that processes actions and returns updated world state
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

  /// Process an action and return the updated world state
  Future<WorldState> call(WorldState world, Action action) async {
    // Process player action
    var updatedWorld = await action.when(
      attack: (_, _) => _attack(world, action),
      defend: () => _defend(world),
      flee: () => _flee(world),
      useItem: (itemName, _) => Future.value(
        world.withLog('You used $itemName.'),
      ),
      talk: (npcName) => Future.value(
        world.withLog('You talked to $npcName.'),
      ),
      rest: () => _rest(world),
      inspect: (_) => _inspect(world, action),
    );

    // Process opponent turn if still in combat
    updatedWorld = await _opponentTurn(updatedWorld);

    // Advance turn and return
    return updatedWorld.nextTurn();
  }
}
