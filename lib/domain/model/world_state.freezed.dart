// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'world_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorldState {

 Actor get player; Map<String, Actor> get actors;// All actors in the world
 Situation? get currentSituation; List<String> get log;// Game log/history
 int get turn; bool get isGameOver; String get gameOverReason;
/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldStateCopyWith<WorldState> get copyWith => _$WorldStateCopyWithImpl<WorldState>(this as WorldState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldState&&(identical(other.player, player) || other.player == player)&&const DeepCollectionEquality().equals(other.actors, actors)&&(identical(other.currentSituation, currentSituation) || other.currentSituation == currentSituation)&&const DeepCollectionEquality().equals(other.log, log)&&(identical(other.turn, turn) || other.turn == turn)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.gameOverReason, gameOverReason) || other.gameOverReason == gameOverReason));
}


@override
int get hashCode => Object.hash(runtimeType,player,const DeepCollectionEquality().hash(actors),currentSituation,const DeepCollectionEquality().hash(log),turn,isGameOver,gameOverReason);

@override
String toString() {
  return 'WorldState(player: $player, actors: $actors, currentSituation: $currentSituation, log: $log, turn: $turn, isGameOver: $isGameOver, gameOverReason: $gameOverReason)';
}


}

/// @nodoc
abstract mixin class $WorldStateCopyWith<$Res>  {
  factory $WorldStateCopyWith(WorldState value, $Res Function(WorldState) _then) = _$WorldStateCopyWithImpl;
@useResult
$Res call({
 Actor player, Map<String, Actor> actors, Situation? currentSituation, List<String> log, int turn, bool isGameOver, String gameOverReason
});


$ActorCopyWith<$Res> get player;$SituationCopyWith<$Res>? get currentSituation;

}
/// @nodoc
class _$WorldStateCopyWithImpl<$Res>
    implements $WorldStateCopyWith<$Res> {
  _$WorldStateCopyWithImpl(this._self, this._then);

  final WorldState _self;
  final $Res Function(WorldState) _then;

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? player = null,Object? actors = null,Object? currentSituation = freezed,Object? log = null,Object? turn = null,Object? isGameOver = null,Object? gameOverReason = null,}) {
  return _then(_self.copyWith(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Actor,actors: null == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as Map<String, Actor>,currentSituation: freezed == currentSituation ? _self.currentSituation : currentSituation // ignore: cast_nullable_to_non_nullable
as Situation?,log: null == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as List<String>,turn: null == turn ? _self.turn : turn // ignore: cast_nullable_to_non_nullable
as int,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,gameOverReason: null == gameOverReason ? _self.gameOverReason : gameOverReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActorCopyWith<$Res> get player {
  
  return $ActorCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SituationCopyWith<$Res>? get currentSituation {
    if (_self.currentSituation == null) {
    return null;
  }

  return $SituationCopyWith<$Res>(_self.currentSituation!, (value) {
    return _then(_self.copyWith(currentSituation: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorldState].
extension WorldStatePatterns on WorldState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldState value)  $default,){
final _that = this;
switch (_that) {
case _WorldState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldState value)?  $default,){
final _that = this;
switch (_that) {
case _WorldState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Actor player,  Map<String, Actor> actors,  Situation? currentSituation,  List<String> log,  int turn,  bool isGameOver,  String gameOverReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorldState() when $default != null:
return $default(_that.player,_that.actors,_that.currentSituation,_that.log,_that.turn,_that.isGameOver,_that.gameOverReason);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Actor player,  Map<String, Actor> actors,  Situation? currentSituation,  List<String> log,  int turn,  bool isGameOver,  String gameOverReason)  $default,) {final _that = this;
switch (_that) {
case _WorldState():
return $default(_that.player,_that.actors,_that.currentSituation,_that.log,_that.turn,_that.isGameOver,_that.gameOverReason);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Actor player,  Map<String, Actor> actors,  Situation? currentSituation,  List<String> log,  int turn,  bool isGameOver,  String gameOverReason)?  $default,) {final _that = this;
switch (_that) {
case _WorldState() when $default != null:
return $default(_that.player,_that.actors,_that.currentSituation,_that.log,_that.turn,_that.isGameOver,_that.gameOverReason);case _:
  return null;

}
}

}

/// @nodoc


class _WorldState extends WorldState {
  const _WorldState({required this.player, final  Map<String, Actor> actors = const <String, Actor>{}, this.currentSituation, final  List<String> log = const <String>[], this.turn = 0, this.isGameOver = false, this.gameOverReason = ''}): _actors = actors,_log = log,super._();
  

@override final  Actor player;
 final  Map<String, Actor> _actors;
@override@JsonKey() Map<String, Actor> get actors {
  if (_actors is EqualUnmodifiableMapView) return _actors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_actors);
}

// All actors in the world
@override final  Situation? currentSituation;
 final  List<String> _log;
@override@JsonKey() List<String> get log {
  if (_log is EqualUnmodifiableListView) return _log;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_log);
}

// Game log/history
@override@JsonKey() final  int turn;
@override@JsonKey() final  bool isGameOver;
@override@JsonKey() final  String gameOverReason;

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldStateCopyWith<_WorldState> get copyWith => __$WorldStateCopyWithImpl<_WorldState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldState&&(identical(other.player, player) || other.player == player)&&const DeepCollectionEquality().equals(other._actors, _actors)&&(identical(other.currentSituation, currentSituation) || other.currentSituation == currentSituation)&&const DeepCollectionEquality().equals(other._log, _log)&&(identical(other.turn, turn) || other.turn == turn)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver)&&(identical(other.gameOverReason, gameOverReason) || other.gameOverReason == gameOverReason));
}


@override
int get hashCode => Object.hash(runtimeType,player,const DeepCollectionEquality().hash(_actors),currentSituation,const DeepCollectionEquality().hash(_log),turn,isGameOver,gameOverReason);

@override
String toString() {
  return 'WorldState(player: $player, actors: $actors, currentSituation: $currentSituation, log: $log, turn: $turn, isGameOver: $isGameOver, gameOverReason: $gameOverReason)';
}


}

/// @nodoc
abstract mixin class _$WorldStateCopyWith<$Res> implements $WorldStateCopyWith<$Res> {
  factory _$WorldStateCopyWith(_WorldState value, $Res Function(_WorldState) _then) = __$WorldStateCopyWithImpl;
@override @useResult
$Res call({
 Actor player, Map<String, Actor> actors, Situation? currentSituation, List<String> log, int turn, bool isGameOver, String gameOverReason
});


@override $ActorCopyWith<$Res> get player;@override $SituationCopyWith<$Res>? get currentSituation;

}
/// @nodoc
class __$WorldStateCopyWithImpl<$Res>
    implements _$WorldStateCopyWith<$Res> {
  __$WorldStateCopyWithImpl(this._self, this._then);

  final _WorldState _self;
  final $Res Function(_WorldState) _then;

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? player = null,Object? actors = null,Object? currentSituation = freezed,Object? log = null,Object? turn = null,Object? isGameOver = null,Object? gameOverReason = null,}) {
  return _then(_WorldState(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Actor,actors: null == actors ? _self._actors : actors // ignore: cast_nullable_to_non_nullable
as Map<String, Actor>,currentSituation: freezed == currentSituation ? _self.currentSituation : currentSituation // ignore: cast_nullable_to_non_nullable
as Situation?,log: null == log ? _self._log : log // ignore: cast_nullable_to_non_nullable
as List<String>,turn: null == turn ? _self.turn : turn // ignore: cast_nullable_to_non_nullable
as int,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,gameOverReason: null == gameOverReason ? _self.gameOverReason : gameOverReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActorCopyWith<$Res> get player {
  
  return $ActorCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SituationCopyWith<$Res>? get currentSituation {
    if (_self.currentSituation == null) {
    return null;
  }

  return $SituationCopyWith<$Res>(_self.currentSituation!, (value) {
    return _then(_self.copyWith(currentSituation: value));
  });
}
}

// dart format on
