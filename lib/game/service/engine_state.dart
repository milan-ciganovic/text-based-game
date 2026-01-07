import 'package:untitled1/game/models/actor.dart';
import 'package:untitled1/game/models/situation.dart';

class EngineState {
  EngineState({
    required this.player,
    required this.actors,
    required this.currentSituation,
    required this.logs,
  });

  Actor player;
  Map<String, Actor> actors;
  Situation? currentSituation;
  List<String> logs;

  void updateActor(String key, Actor actor) => actors[key] = actor;
}
