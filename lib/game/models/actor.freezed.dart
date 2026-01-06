// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Actor {

 String get name;
/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActorCopyWith<Actor> get copyWith => _$ActorCopyWithImpl<Actor>(this as Actor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Actor&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Actor(name: $name)';
}


}

/// @nodoc
abstract mixin class $ActorCopyWith<$Res>  {
  factory $ActorCopyWith(Actor value, $Res Function(Actor) _then) = _$ActorCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ActorCopyWithImpl<$Res>
    implements $ActorCopyWith<$Res> {
  _$ActorCopyWithImpl(this._self, this._then);

  final Actor _self;
  final $Res Function(Actor) _then;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Actor].
extension ActorPatterns on Actor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PlayerActor value)?  player,TResult Function( _MonsterActor value)?  monster,TResult Function( _NPCActor value)?  npc,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerActor() when player != null:
return player(_that);case _MonsterActor() when monster != null:
return monster(_that);case _NPCActor() when npc != null:
return npc(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PlayerActor value)  player,required TResult Function( _MonsterActor value)  monster,required TResult Function( _NPCActor value)  npc,}){
final _that = this;
switch (_that) {
case _PlayerActor():
return player(_that);case _MonsterActor():
return monster(_that);case _NPCActor():
return npc(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PlayerActor value)?  player,TResult? Function( _MonsterActor value)?  monster,TResult? Function( _NPCActor value)?  npc,}){
final _that = this;
switch (_that) {
case _PlayerActor() when player != null:
return player(_that);case _MonsterActor() when monster != null:
return monster(_that);case _NPCActor() when npc != null:
return npc(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  int health,  int maxHealth,  int experience,  int level)?  player,TResult Function( String name,  int health,  int maxHealth,  int experience)?  monster,TResult Function( String name,  String description)?  npc,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerActor() when player != null:
return player(_that.name,_that.health,_that.maxHealth,_that.experience,_that.level);case _MonsterActor() when monster != null:
return monster(_that.name,_that.health,_that.maxHealth,_that.experience);case _NPCActor() when npc != null:
return npc(_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  int health,  int maxHealth,  int experience,  int level)  player,required TResult Function( String name,  int health,  int maxHealth,  int experience)  monster,required TResult Function( String name,  String description)  npc,}) {final _that = this;
switch (_that) {
case _PlayerActor():
return player(_that.name,_that.health,_that.maxHealth,_that.experience,_that.level);case _MonsterActor():
return monster(_that.name,_that.health,_that.maxHealth,_that.experience);case _NPCActor():
return npc(_that.name,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  int health,  int maxHealth,  int experience,  int level)?  player,TResult? Function( String name,  int health,  int maxHealth,  int experience)?  monster,TResult? Function( String name,  String description)?  npc,}) {final _that = this;
switch (_that) {
case _PlayerActor() when player != null:
return player(_that.name,_that.health,_that.maxHealth,_that.experience,_that.level);case _MonsterActor() when monster != null:
return monster(_that.name,_that.health,_that.maxHealth,_that.experience);case _NPCActor() when npc != null:
return npc(_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerActor extends Actor {
  const _PlayerActor({required this.name, required this.health, required this.maxHealth, this.experience = 0, this.level = 1}): super._();
  

@override final  String name;
 final  int health;
 final  int maxHealth;
@JsonKey() final  int experience;
@JsonKey() final  int level;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerActorCopyWith<_PlayerActor> get copyWith => __$PlayerActorCopyWithImpl<_PlayerActor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerActor&&(identical(other.name, name) || other.name == name)&&(identical(other.health, health) || other.health == health)&&(identical(other.maxHealth, maxHealth) || other.maxHealth == maxHealth)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.level, level) || other.level == level));
}


@override
int get hashCode => Object.hash(runtimeType,name,health,maxHealth,experience,level);

@override
String toString() {
  return 'Actor.player(name: $name, health: $health, maxHealth: $maxHealth, experience: $experience, level: $level)';
}


}

/// @nodoc
abstract mixin class _$PlayerActorCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$PlayerActorCopyWith(_PlayerActor value, $Res Function(_PlayerActor) _then) = __$PlayerActorCopyWithImpl;
@override @useResult
$Res call({
 String name, int health, int maxHealth, int experience, int level
});




}
/// @nodoc
class __$PlayerActorCopyWithImpl<$Res>
    implements _$PlayerActorCopyWith<$Res> {
  __$PlayerActorCopyWithImpl(this._self, this._then);

  final _PlayerActor _self;
  final $Res Function(_PlayerActor) _then;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? health = null,Object? maxHealth = null,Object? experience = null,Object? level = null,}) {
  return _then(_PlayerActor(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,maxHealth: null == maxHealth ? _self.maxHealth : maxHealth // ignore: cast_nullable_to_non_nullable
as int,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _MonsterActor extends Actor {
  const _MonsterActor({required this.name, required this.health, required this.maxHealth, this.experience = 0}): super._();
  

@override final  String name;
 final  int health;
 final  int maxHealth;
@JsonKey() final  int experience;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonsterActorCopyWith<_MonsterActor> get copyWith => __$MonsterActorCopyWithImpl<_MonsterActor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonsterActor&&(identical(other.name, name) || other.name == name)&&(identical(other.health, health) || other.health == health)&&(identical(other.maxHealth, maxHealth) || other.maxHealth == maxHealth)&&(identical(other.experience, experience) || other.experience == experience));
}


@override
int get hashCode => Object.hash(runtimeType,name,health,maxHealth,experience);

@override
String toString() {
  return 'Actor.monster(name: $name, health: $health, maxHealth: $maxHealth, experience: $experience)';
}


}

/// @nodoc
abstract mixin class _$MonsterActorCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$MonsterActorCopyWith(_MonsterActor value, $Res Function(_MonsterActor) _then) = __$MonsterActorCopyWithImpl;
@override @useResult
$Res call({
 String name, int health, int maxHealth, int experience
});




}
/// @nodoc
class __$MonsterActorCopyWithImpl<$Res>
    implements _$MonsterActorCopyWith<$Res> {
  __$MonsterActorCopyWithImpl(this._self, this._then);

  final _MonsterActor _self;
  final $Res Function(_MonsterActor) _then;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? health = null,Object? maxHealth = null,Object? experience = null,}) {
  return _then(_MonsterActor(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,health: null == health ? _self.health : health // ignore: cast_nullable_to_non_nullable
as int,maxHealth: null == maxHealth ? _self.maxHealth : maxHealth // ignore: cast_nullable_to_non_nullable
as int,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NPCActor extends Actor {
  const _NPCActor({required this.name, required this.description}): super._();
  

@override final  String name;
 final  String description;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NPCActorCopyWith<_NPCActor> get copyWith => __$NPCActorCopyWithImpl<_NPCActor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NPCActor&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'Actor.npc(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$NPCActorCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$NPCActorCopyWith(_NPCActor value, $Res Function(_NPCActor) _then) = __$NPCActorCopyWithImpl;
@override @useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class __$NPCActorCopyWithImpl<$Res>
    implements _$NPCActorCopyWith<$Res> {
  __$NPCActorCopyWithImpl(this._self, this._then);

  final _NPCActor _self;
  final $Res Function(_NPCActor) _then;

/// Create a copy of Actor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,}) {
  return _then(_NPCActor(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
