part of 'game_bloc.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.startGame() = _StartGame;
  const factory GameEvent.spawnMonster() = _SpawnMonster;
  const factory GameEvent.performAction(Action action) = _PerformActionEvent;
  const factory GameEvent.attack() = _AttackEvent;
  const factory GameEvent.defend() = _DefendEvent;
  const factory GameEvent.flee() = _FleeEvent;
  const factory GameEvent.rest() = _RestEvent;
  const factory GameEvent.inspectOpponent() = _InspectOpponentEvent;
}
