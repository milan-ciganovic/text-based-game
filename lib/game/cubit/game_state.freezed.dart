// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 Player get player; Monster? get currentMonster; List<String> get log; bool get isGameOver;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.player, player) || other.player == player)&&(identical(other.currentMonster, currentMonster) || other.currentMonster == currentMonster)&&const DeepCollectionEquality().equals(other.log, log)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,player,currentMonster,const DeepCollectionEquality().hash(log),isGameOver);

@override
String toString() {
  return 'GameState(player: $player, currentMonster: $currentMonster, log: $log, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 Player player, Monster? currentMonster, List<String> log, bool isGameOver
});


$PlayerCopyWith<$Res> get player;$MonsterCopyWith<$Res>? get currentMonster;

}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? player = null,Object? currentMonster = freezed,Object? log = null,Object? isGameOver = null,}) {
  return _then(_self.copyWith(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,currentMonster: freezed == currentMonster ? _self.currentMonster : currentMonster // ignore: cast_nullable_to_non_nullable
as Monster?,log: null == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as List<String>,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonsterCopyWith<$Res>? get currentMonster {
    if (_self.currentMonster == null) {
    return null;
  }

  return $MonsterCopyWith<$Res>(_self.currentMonster!, (value) {
    return _then(_self.copyWith(currentMonster: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Player player,  Monster? currentMonster,  List<String> log,  bool isGameOver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.player,_that.currentMonster,_that.log,_that.isGameOver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Player player,  Monster? currentMonster,  List<String> log,  bool isGameOver)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.player,_that.currentMonster,_that.log,_that.isGameOver);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Player player,  Monster? currentMonster,  List<String> log,  bool isGameOver)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.player,_that.currentMonster,_that.log,_that.isGameOver);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({required this.player, this.currentMonster, final  List<String> log = const [], this.isGameOver = false}): _log = log;
  

@override final  Player player;
@override final  Monster? currentMonster;
 final  List<String> _log;
@override@JsonKey() List<String> get log {
  if (_log is EqualUnmodifiableListView) return _log;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_log);
}

@override@JsonKey() final  bool isGameOver;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.player, player) || other.player == player)&&(identical(other.currentMonster, currentMonster) || other.currentMonster == currentMonster)&&const DeepCollectionEquality().equals(other._log, _log)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,player,currentMonster,const DeepCollectionEquality().hash(_log),isGameOver);

@override
String toString() {
  return 'GameState(player: $player, currentMonster: $currentMonster, log: $log, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 Player player, Monster? currentMonster, List<String> log, bool isGameOver
});


@override $PlayerCopyWith<$Res> get player;@override $MonsterCopyWith<$Res>? get currentMonster;

}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? player = null,Object? currentMonster = freezed,Object? log = null,Object? isGameOver = null,}) {
  return _then(_GameState(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,currentMonster: freezed == currentMonster ? _self.currentMonster : currentMonster // ignore: cast_nullable_to_non_nullable
as Monster?,log: null == log ? _self._log : log // ignore: cast_nullable_to_non_nullable
as List<String>,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonsterCopyWith<$Res>? get currentMonster {
    if (_self.currentMonster == null) {
    return null;
  }

  return $MonsterCopyWith<$Res>(_self.currentMonster!, (value) {
    return _then(_self.copyWith(currentMonster: value));
  });
}
}

// dart format on
