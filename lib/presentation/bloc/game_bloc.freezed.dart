// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartGame value)?  startGame,TResult Function( _SpawnMonster value)?  spawnMonster,TResult Function( _PerformActionEvent value)?  performAction,TResult Function( _AttackEvent value)?  attack,TResult Function( _DefendEvent value)?  defend,TResult Function( _FleeEvent value)?  flee,TResult Function( _RestEvent value)?  rest,TResult Function( _InspectOpponentEvent value)?  inspectOpponent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartGame() when startGame != null:
return startGame(_that);case _SpawnMonster() when spawnMonster != null:
return spawnMonster(_that);case _PerformActionEvent() when performAction != null:
return performAction(_that);case _AttackEvent() when attack != null:
return attack(_that);case _DefendEvent() when defend != null:
return defend(_that);case _FleeEvent() when flee != null:
return flee(_that);case _RestEvent() when rest != null:
return rest(_that);case _InspectOpponentEvent() when inspectOpponent != null:
return inspectOpponent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartGame value)  startGame,required TResult Function( _SpawnMonster value)  spawnMonster,required TResult Function( _PerformActionEvent value)  performAction,required TResult Function( _AttackEvent value)  attack,required TResult Function( _DefendEvent value)  defend,required TResult Function( _FleeEvent value)  flee,required TResult Function( _RestEvent value)  rest,required TResult Function( _InspectOpponentEvent value)  inspectOpponent,}){
final _that = this;
switch (_that) {
case _StartGame():
return startGame(_that);case _SpawnMonster():
return spawnMonster(_that);case _PerformActionEvent():
return performAction(_that);case _AttackEvent():
return attack(_that);case _DefendEvent():
return defend(_that);case _FleeEvent():
return flee(_that);case _RestEvent():
return rest(_that);case _InspectOpponentEvent():
return inspectOpponent(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartGame value)?  startGame,TResult? Function( _SpawnMonster value)?  spawnMonster,TResult? Function( _PerformActionEvent value)?  performAction,TResult? Function( _AttackEvent value)?  attack,TResult? Function( _DefendEvent value)?  defend,TResult? Function( _FleeEvent value)?  flee,TResult? Function( _RestEvent value)?  rest,TResult? Function( _InspectOpponentEvent value)?  inspectOpponent,}){
final _that = this;
switch (_that) {
case _StartGame() when startGame != null:
return startGame(_that);case _SpawnMonster() when spawnMonster != null:
return spawnMonster(_that);case _PerformActionEvent() when performAction != null:
return performAction(_that);case _AttackEvent() when attack != null:
return attack(_that);case _DefendEvent() when defend != null:
return defend(_that);case _FleeEvent() when flee != null:
return flee(_that);case _RestEvent() when rest != null:
return rest(_that);case _InspectOpponentEvent() when inspectOpponent != null:
return inspectOpponent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  startGame,TResult Function()?  spawnMonster,TResult Function( Action action)?  performAction,TResult Function()?  attack,TResult Function()?  defend,TResult Function()?  flee,TResult Function()?  rest,TResult Function()?  inspectOpponent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartGame() when startGame != null:
return startGame();case _SpawnMonster() when spawnMonster != null:
return spawnMonster();case _PerformActionEvent() when performAction != null:
return performAction(_that.action);case _AttackEvent() when attack != null:
return attack();case _DefendEvent() when defend != null:
return defend();case _FleeEvent() when flee != null:
return flee();case _RestEvent() when rest != null:
return rest();case _InspectOpponentEvent() when inspectOpponent != null:
return inspectOpponent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  startGame,required TResult Function()  spawnMonster,required TResult Function( Action action)  performAction,required TResult Function()  attack,required TResult Function()  defend,required TResult Function()  flee,required TResult Function()  rest,required TResult Function()  inspectOpponent,}) {final _that = this;
switch (_that) {
case _StartGame():
return startGame();case _SpawnMonster():
return spawnMonster();case _PerformActionEvent():
return performAction(_that.action);case _AttackEvent():
return attack();case _DefendEvent():
return defend();case _FleeEvent():
return flee();case _RestEvent():
return rest();case _InspectOpponentEvent():
return inspectOpponent();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  startGame,TResult? Function()?  spawnMonster,TResult? Function( Action action)?  performAction,TResult? Function()?  attack,TResult? Function()?  defend,TResult? Function()?  flee,TResult? Function()?  rest,TResult? Function()?  inspectOpponent,}) {final _that = this;
switch (_that) {
case _StartGame() when startGame != null:
return startGame();case _SpawnMonster() when spawnMonster != null:
return spawnMonster();case _PerformActionEvent() when performAction != null:
return performAction(_that.action);case _AttackEvent() when attack != null:
return attack();case _DefendEvent() when defend != null:
return defend();case _FleeEvent() when flee != null:
return flee();case _RestEvent() when rest != null:
return rest();case _InspectOpponentEvent() when inspectOpponent != null:
return inspectOpponent();case _:
  return null;

}
}

}

/// @nodoc


class _StartGame implements GameEvent {
  const _StartGame();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.startGame()';
}


}




/// @nodoc


class _SpawnMonster implements GameEvent {
  const _SpawnMonster();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpawnMonster);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.spawnMonster()';
}


}




/// @nodoc


class _PerformActionEvent implements GameEvent {
  const _PerformActionEvent(this.action);
  

 final  Action action;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerformActionEventCopyWith<_PerformActionEvent> get copyWith => __$PerformActionEventCopyWithImpl<_PerformActionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerformActionEvent&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,action);

@override
String toString() {
  return 'GameEvent.performAction(action: $action)';
}


}

/// @nodoc
abstract mixin class _$PerformActionEventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$PerformActionEventCopyWith(_PerformActionEvent value, $Res Function(_PerformActionEvent) _then) = __$PerformActionEventCopyWithImpl;
@useResult
$Res call({
 Action action
});


$ActionCopyWith<$Res> get action;

}
/// @nodoc
class __$PerformActionEventCopyWithImpl<$Res>
    implements _$PerformActionEventCopyWith<$Res> {
  __$PerformActionEventCopyWithImpl(this._self, this._then);

  final _PerformActionEvent _self;
  final $Res Function(_PerformActionEvent) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? action = null,}) {
  return _then(_PerformActionEvent(
null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as Action,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionCopyWith<$Res> get action {
  
  return $ActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}

/// @nodoc


class _AttackEvent implements GameEvent {
  const _AttackEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttackEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.attack()';
}


}




/// @nodoc


class _DefendEvent implements GameEvent {
  const _DefendEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefendEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.defend()';
}


}




/// @nodoc


class _FleeEvent implements GameEvent {
  const _FleeEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.flee()';
}


}




/// @nodoc


class _RestEvent implements GameEvent {
  const _RestEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.rest()';
}


}




/// @nodoc


class _InspectOpponentEvent implements GameEvent {
  const _InspectOpponentEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectOpponentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.inspectOpponent()';
}


}




/// @nodoc
mixin _$GameState {

 WorldState get worldState; List<String> get availableActions; bool get isLoading;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.worldState, worldState) || other.worldState == worldState)&&const DeepCollectionEquality().equals(other.availableActions, availableActions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,worldState,const DeepCollectionEquality().hash(availableActions),isLoading);

@override
String toString() {
  return 'GameState(worldState: $worldState, availableActions: $availableActions, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 WorldState worldState, List<String> availableActions, bool isLoading
});


$WorldStateCopyWith<$Res> get worldState;

}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? worldState = null,Object? availableActions = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
worldState: null == worldState ? _self.worldState : worldState // ignore: cast_nullable_to_non_nullable
as WorldState,availableActions: null == availableActions ? _self.availableActions : availableActions // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldStateCopyWith<$Res> get worldState {
  
  return $WorldStateCopyWith<$Res>(_self.worldState, (value) {
    return _then(_self.copyWith(worldState: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorldState worldState,  List<String> availableActions,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.worldState,_that.availableActions,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorldState worldState,  List<String> availableActions,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.worldState,_that.availableActions,_that.isLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorldState worldState,  List<String> availableActions,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.worldState,_that.availableActions,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({required this.worldState, final  List<String> availableActions = const [], this.isLoading = false}): _availableActions = availableActions;
  

@override final  WorldState worldState;
 final  List<String> _availableActions;
@override@JsonKey() List<String> get availableActions {
  if (_availableActions is EqualUnmodifiableListView) return _availableActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableActions);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.worldState, worldState) || other.worldState == worldState)&&const DeepCollectionEquality().equals(other._availableActions, _availableActions)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,worldState,const DeepCollectionEquality().hash(_availableActions),isLoading);

@override
String toString() {
  return 'GameState(worldState: $worldState, availableActions: $availableActions, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 WorldState worldState, List<String> availableActions, bool isLoading
});


@override $WorldStateCopyWith<$Res> get worldState;

}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? worldState = null,Object? availableActions = null,Object? isLoading = null,}) {
  return _then(_GameState(
worldState: null == worldState ? _self.worldState : worldState // ignore: cast_nullable_to_non_nullable
as WorldState,availableActions: null == availableActions ? _self._availableActions : availableActions // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldStateCopyWith<$Res> get worldState {
  
  return $WorldStateCopyWith<$Res>(_self.worldState, (value) {
    return _then(_self.copyWith(worldState: value));
  });
}
}

// dart format on
