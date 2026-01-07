// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'situation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Situation {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Situation);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Situation()';
}


}

/// @nodoc
class $SituationCopyWith<$Res>  {
$SituationCopyWith(Situation _, $Res Function(Situation) __);
}


/// Adds pattern-matching-related methods to [Situation].
extension SituationPatterns on Situation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CombatSituation value)?  combat,TResult Function( _ExplorationSituation value)?  exploration,TResult Function( _RestSituation value)?  rest,TResult Function( _DialogueSituation value)?  dialogue,TResult Function( _CustomSituation value)?  custom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CombatSituation() when combat != null:
return combat(_that);case _ExplorationSituation() when exploration != null:
return exploration(_that);case _RestSituation() when rest != null:
return rest(_that);case _DialogueSituation() when dialogue != null:
return dialogue(_that);case _CustomSituation() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CombatSituation value)  combat,required TResult Function( _ExplorationSituation value)  exploration,required TResult Function( _RestSituation value)  rest,required TResult Function( _DialogueSituation value)  dialogue,required TResult Function( _CustomSituation value)  custom,}){
final _that = this;
switch (_that) {
case CombatSituation():
return combat(_that);case _ExplorationSituation():
return exploration(_that);case _RestSituation():
return rest(_that);case _DialogueSituation():
return dialogue(_that);case _CustomSituation():
return custom(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CombatSituation value)?  combat,TResult? Function( _ExplorationSituation value)?  exploration,TResult? Function( _RestSituation value)?  rest,TResult? Function( _DialogueSituation value)?  dialogue,TResult? Function( _CustomSituation value)?  custom,}){
final _that = this;
switch (_that) {
case CombatSituation() when combat != null:
return combat(_that);case _ExplorationSituation() when exploration != null:
return exploration(_that);case _RestSituation() when rest != null:
return rest(_that);case _DialogueSituation() when dialogue != null:
return dialogue(_that);case _CustomSituation() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String monsterName,  String description)?  combat,TResult Function( String locationName,  String description,  List<String> availableDirections)?  exploration,TResult Function( String description)?  rest,TResult Function( String npcName,  String dialogueText)?  dialogue,TResult Function( String name,  String description)?  custom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CombatSituation() when combat != null:
return combat(_that.monsterName,_that.description);case _ExplorationSituation() when exploration != null:
return exploration(_that.locationName,_that.description,_that.availableDirections);case _RestSituation() when rest != null:
return rest(_that.description);case _DialogueSituation() when dialogue != null:
return dialogue(_that.npcName,_that.dialogueText);case _CustomSituation() when custom != null:
return custom(_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String monsterName,  String description)  combat,required TResult Function( String locationName,  String description,  List<String> availableDirections)  exploration,required TResult Function( String description)  rest,required TResult Function( String npcName,  String dialogueText)  dialogue,required TResult Function( String name,  String description)  custom,}) {final _that = this;
switch (_that) {
case CombatSituation():
return combat(_that.monsterName,_that.description);case _ExplorationSituation():
return exploration(_that.locationName,_that.description,_that.availableDirections);case _RestSituation():
return rest(_that.description);case _DialogueSituation():
return dialogue(_that.npcName,_that.dialogueText);case _CustomSituation():
return custom(_that.name,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String monsterName,  String description)?  combat,TResult? Function( String locationName,  String description,  List<String> availableDirections)?  exploration,TResult? Function( String description)?  rest,TResult? Function( String npcName,  String dialogueText)?  dialogue,TResult? Function( String name,  String description)?  custom,}) {final _that = this;
switch (_that) {
case CombatSituation() when combat != null:
return combat(_that.monsterName,_that.description);case _ExplorationSituation() when exploration != null:
return exploration(_that.locationName,_that.description,_that.availableDirections);case _RestSituation() when rest != null:
return rest(_that.description);case _DialogueSituation() when dialogue != null:
return dialogue(_that.npcName,_that.dialogueText);case _CustomSituation() when custom != null:
return custom(_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class CombatSituation extends Situation {
  const CombatSituation({required this.monsterName, this.description = 'A wild enemy appears!'}): super._();
  

 final  String monsterName;
@JsonKey() final  String description;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CombatSituationCopyWith<CombatSituation> get copyWith => _$CombatSituationCopyWithImpl<CombatSituation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CombatSituation&&(identical(other.monsterName, monsterName) || other.monsterName == monsterName)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,monsterName,description);

@override
String toString() {
  return 'Situation.combat(monsterName: $monsterName, description: $description)';
}


}

/// @nodoc
abstract mixin class $CombatSituationCopyWith<$Res> implements $SituationCopyWith<$Res> {
  factory $CombatSituationCopyWith(CombatSituation value, $Res Function(CombatSituation) _then) = _$CombatSituationCopyWithImpl;
@useResult
$Res call({
 String monsterName, String description
});




}
/// @nodoc
class _$CombatSituationCopyWithImpl<$Res>
    implements $CombatSituationCopyWith<$Res> {
  _$CombatSituationCopyWithImpl(this._self, this._then);

  final CombatSituation _self;
  final $Res Function(CombatSituation) _then;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? monsterName = null,Object? description = null,}) {
  return _then(CombatSituation(
monsterName: null == monsterName ? _self.monsterName : monsterName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ExplorationSituation extends Situation {
  const _ExplorationSituation({required this.locationName, required this.description, final  List<String> availableDirections = const []}): _availableDirections = availableDirections,super._();
  

 final  String locationName;
 final  String description;
 final  List<String> _availableDirections;
@JsonKey() List<String> get availableDirections {
  if (_availableDirections is EqualUnmodifiableListView) return _availableDirections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableDirections);
}


/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExplorationSituationCopyWith<_ExplorationSituation> get copyWith => __$ExplorationSituationCopyWithImpl<_ExplorationSituation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExplorationSituation&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._availableDirections, _availableDirections));
}


@override
int get hashCode => Object.hash(runtimeType,locationName,description,const DeepCollectionEquality().hash(_availableDirections));

@override
String toString() {
  return 'Situation.exploration(locationName: $locationName, description: $description, availableDirections: $availableDirections)';
}


}

/// @nodoc
abstract mixin class _$ExplorationSituationCopyWith<$Res> implements $SituationCopyWith<$Res> {
  factory _$ExplorationSituationCopyWith(_ExplorationSituation value, $Res Function(_ExplorationSituation) _then) = __$ExplorationSituationCopyWithImpl;
@useResult
$Res call({
 String locationName, String description, List<String> availableDirections
});




}
/// @nodoc
class __$ExplorationSituationCopyWithImpl<$Res>
    implements _$ExplorationSituationCopyWith<$Res> {
  __$ExplorationSituationCopyWithImpl(this._self, this._then);

  final _ExplorationSituation _self;
  final $Res Function(_ExplorationSituation) _then;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationName = null,Object? description = null,Object? availableDirections = null,}) {
  return _then(_ExplorationSituation(
locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,availableDirections: null == availableDirections ? _self._availableDirections : availableDirections // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _RestSituation extends Situation {
  const _RestSituation({this.description = 'You rest and recover.'}): super._();
  

@JsonKey() final  String description;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestSituationCopyWith<_RestSituation> get copyWith => __$RestSituationCopyWithImpl<_RestSituation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestSituation&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'Situation.rest(description: $description)';
}


}

/// @nodoc
abstract mixin class _$RestSituationCopyWith<$Res> implements $SituationCopyWith<$Res> {
  factory _$RestSituationCopyWith(_RestSituation value, $Res Function(_RestSituation) _then) = __$RestSituationCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class __$RestSituationCopyWithImpl<$Res>
    implements _$RestSituationCopyWith<$Res> {
  __$RestSituationCopyWithImpl(this._self, this._then);

  final _RestSituation _self;
  final $Res Function(_RestSituation) _then;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_RestSituation(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DialogueSituation extends Situation {
  const _DialogueSituation({required this.npcName, required this.dialogueText}): super._();
  

 final  String npcName;
 final  String dialogueText;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DialogueSituationCopyWith<_DialogueSituation> get copyWith => __$DialogueSituationCopyWithImpl<_DialogueSituation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DialogueSituation&&(identical(other.npcName, npcName) || other.npcName == npcName)&&(identical(other.dialogueText, dialogueText) || other.dialogueText == dialogueText));
}


@override
int get hashCode => Object.hash(runtimeType,npcName,dialogueText);

@override
String toString() {
  return 'Situation.dialogue(npcName: $npcName, dialogueText: $dialogueText)';
}


}

/// @nodoc
abstract mixin class _$DialogueSituationCopyWith<$Res> implements $SituationCopyWith<$Res> {
  factory _$DialogueSituationCopyWith(_DialogueSituation value, $Res Function(_DialogueSituation) _then) = __$DialogueSituationCopyWithImpl;
@useResult
$Res call({
 String npcName, String dialogueText
});




}
/// @nodoc
class __$DialogueSituationCopyWithImpl<$Res>
    implements _$DialogueSituationCopyWith<$Res> {
  __$DialogueSituationCopyWithImpl(this._self, this._then);

  final _DialogueSituation _self;
  final $Res Function(_DialogueSituation) _then;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? npcName = null,Object? dialogueText = null,}) {
  return _then(_DialogueSituation(
npcName: null == npcName ? _self.npcName : npcName // ignore: cast_nullable_to_non_nullable
as String,dialogueText: null == dialogueText ? _self.dialogueText : dialogueText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CustomSituation extends Situation {
  const _CustomSituation({required this.name, required this.description}): super._();
  

 final  String name;
 final  String description;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomSituationCopyWith<_CustomSituation> get copyWith => __$CustomSituationCopyWithImpl<_CustomSituation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomSituation&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,description);

@override
String toString() {
  return 'Situation.custom(name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CustomSituationCopyWith<$Res> implements $SituationCopyWith<$Res> {
  factory _$CustomSituationCopyWith(_CustomSituation value, $Res Function(_CustomSituation) _then) = __$CustomSituationCopyWithImpl;
@useResult
$Res call({
 String name, String description
});




}
/// @nodoc
class __$CustomSituationCopyWithImpl<$Res>
    implements _$CustomSituationCopyWith<$Res> {
  __$CustomSituationCopyWithImpl(this._self, this._then);

  final _CustomSituation _self;
  final $Res Function(_CustomSituation) _then;

/// Create a copy of Situation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,}) {
  return _then(_CustomSituation(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
