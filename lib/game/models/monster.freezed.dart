// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Monster {

 String get name; int get health; int get damage;
/// Create a copy of Monster
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonsterCopyWith<Monster> get copyWith => _$MonsterCopyWithImpl<Monster>(this as Monster, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Monster&&(identical(other.name, name) || other.name == name)&&(identical(other.health, health) || other.health == health)&&(identical(other.damage, damage) || other.damage == damage));
}


@override
int get hashCode => Object.hash(runtimeType,name,health,damage);

@override
String toString() {
  return 'Monster(name: $name, health: $health, damage: $damage)';
}


}

/// @nodoc
abstract mixin class $MonsterCopyWith<$Res>  {
  factory $MonsterCopyWith(Monster value, $Res Function(Monster) _then) = _$MonsterCopyWithImpl;
@useResult
$Res call({
 String name, int health, int damage
});




}
/// @nodoc
class _$MonsterCopyWithImpl<$Res>
    implements $MonsterCopyWith<$Res> {
  _$MonsterCopyWithImpl(this._self, this._then);

  final Monster _self;
  final $Res Function(Monster) _then;

/// Create a copy of Monster
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? health = null,Object? damage = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,damage: null == damage ? _self.damage : damage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Monster].
extension MonsterPatterns on Monster {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Monster value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Monster() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Monster value)  $default,){
final _that = this;
switch (_that) {
case _Monster():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Monster value)?  $default,){
final _that = this;
switch (_that) {
case _Monster() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int health,  int damage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Monster() when $default != null:
return $default(_that.name,_that.health,_that.damage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int health,  int damage)  $default,) {final _that = this;
switch (_that) {
case _Monster():
return $default(_that.name,_that.health,_that.damage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int health,  int damage)?  $default,) {final _that = this;
switch (_that) {
case _Monster() when $default != null:
return $default(_that.name,_that.health,_that.damage);case _:
  return null;

}
}

}

/// @nodoc


class _Monster implements Monster {
  const _Monster({required this.name, required this.health, required this.damage});
  

@override final  String name;
@override final  int health;
@override final  int damage;

/// Create a copy of Monster
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonsterCopyWith<_Monster> get copyWith => __$MonsterCopyWithImpl<_Monster>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Monster&&(identical(other.name, name) || other.name == name)&&(identical(other.health, health) || other.health == health)&&(identical(other.damage, damage) || other.damage == damage));
}


@override
int get hashCode => Object.hash(runtimeType,name,health,damage);

@override
String toString() {
  return 'Monster(name: $name, health: $health, damage: $damage)';
}


}

/// @nodoc
abstract mixin class _$MonsterCopyWith<$Res> implements $MonsterCopyWith<$Res> {
  factory _$MonsterCopyWith(_Monster value, $Res Function(_Monster) _then) = __$MonsterCopyWithImpl;
@override @useResult
$Res call({
 String name, int health, int damage
});




}
/// @nodoc
class __$MonsterCopyWithImpl<$Res>
    implements _$MonsterCopyWith<$Res> {
  __$MonsterCopyWithImpl(this._self, this._then);

  final _Monster _self;
  final $Res Function(_Monster) _then;

/// Create a copy of Monster
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? health = null,Object? damage = null,}) {
  return _then(_Monster(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,damage: null == damage ? _self.damage : damage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
