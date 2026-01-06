// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_variables.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameVariables {

 bool get isDefending; String? get currentLocation; int get gold; Map<String, bool> get flags;
/// Create a copy of GameVariables
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameVariablesCopyWith<GameVariables> get copyWith => _$GameVariablesCopyWithImpl<GameVariables>(this as GameVariables, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameVariables&&(identical(other.isDefending, isDefending) || other.isDefending == isDefending)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.flags, flags));
}


@override
int get hashCode => Object.hash(runtimeType,isDefending,currentLocation,gold,const DeepCollectionEquality().hash(flags));

@override
String toString() {
  return 'GameVariables(isDefending: $isDefending, currentLocation: $currentLocation, gold: $gold, flags: $flags)';
}


}

/// @nodoc
abstract mixin class $GameVariablesCopyWith<$Res>  {
  factory $GameVariablesCopyWith(GameVariables value, $Res Function(GameVariables) _then) = _$GameVariablesCopyWithImpl;
@useResult
$Res call({
 bool isDefending, String? currentLocation, int gold, Map<String, bool> flags
});




}
/// @nodoc
class _$GameVariablesCopyWithImpl<$Res>
    implements $GameVariablesCopyWith<$Res> {
  _$GameVariablesCopyWithImpl(this._self, this._then);

  final GameVariables _self;
  final $Res Function(GameVariables) _then;

/// Create a copy of GameVariables
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDefending = null,Object? currentLocation = freezed,Object? gold = null,Object? flags = null,}) {
  return _then(_self.copyWith(
isDefending: null == isDefending ? _self.isDefending : isDefending // ignore: cast_nullable_to_non_nullable
as bool,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}

}


/// Adds pattern-matching-related methods to [GameVariables].
extension GameVariablesPatterns on GameVariables {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameVariables value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameVariables() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameVariables value)  $default,){
final _that = this;
switch (_that) {
case _GameVariables():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameVariables value)?  $default,){
final _that = this;
switch (_that) {
case _GameVariables() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isDefending,  String? currentLocation,  int gold,  Map<String, bool> flags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameVariables() when $default != null:
return $default(_that.isDefending,_that.currentLocation,_that.gold,_that.flags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isDefending,  String? currentLocation,  int gold,  Map<String, bool> flags)  $default,) {final _that = this;
switch (_that) {
case _GameVariables():
return $default(_that.isDefending,_that.currentLocation,_that.gold,_that.flags);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isDefending,  String? currentLocation,  int gold,  Map<String, bool> flags)?  $default,) {final _that = this;
switch (_that) {
case _GameVariables() when $default != null:
return $default(_that.isDefending,_that.currentLocation,_that.gold,_that.flags);case _:
  return null;

}
}

}

/// @nodoc


class _GameVariables extends GameVariables {
  const _GameVariables({this.isDefending = false, this.currentLocation, this.gold = 0, final  Map<String, bool> flags = const <String, bool>{}}): _flags = flags,super._();
  

@override@JsonKey() final  bool isDefending;
@override final  String? currentLocation;
@override@JsonKey() final  int gold;
 final  Map<String, bool> _flags;
@override@JsonKey() Map<String, bool> get flags {
  if (_flags is EqualUnmodifiableMapView) return _flags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_flags);
}


/// Create a copy of GameVariables
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameVariablesCopyWith<_GameVariables> get copyWith => __$GameVariablesCopyWithImpl<_GameVariables>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameVariables&&(identical(other.isDefending, isDefending) || other.isDefending == isDefending)&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._flags, _flags));
}


@override
int get hashCode => Object.hash(runtimeType,isDefending,currentLocation,gold,const DeepCollectionEquality().hash(_flags));

@override
String toString() {
  return 'GameVariables(isDefending: $isDefending, currentLocation: $currentLocation, gold: $gold, flags: $flags)';
}


}

/// @nodoc
abstract mixin class _$GameVariablesCopyWith<$Res> implements $GameVariablesCopyWith<$Res> {
  factory _$GameVariablesCopyWith(_GameVariables value, $Res Function(_GameVariables) _then) = __$GameVariablesCopyWithImpl;
@override @useResult
$Res call({
 bool isDefending, String? currentLocation, int gold, Map<String, bool> flags
});




}
/// @nodoc
class __$GameVariablesCopyWithImpl<$Res>
    implements _$GameVariablesCopyWith<$Res> {
  __$GameVariablesCopyWithImpl(this._self, this._then);

  final _GameVariables _self;
  final $Res Function(_GameVariables) _then;

/// Create a copy of GameVariables
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDefending = null,Object? currentLocation = freezed,Object? gold = null,Object? flags = null,}) {
  return _then(_GameVariables(
isDefending: null == isDefending ? _self.isDefending : isDefending // ignore: cast_nullable_to_non_nullable
as bool,currentLocation: freezed == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as String?,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,flags: null == flags ? _self._flags : flags // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}


}

// dart format on
