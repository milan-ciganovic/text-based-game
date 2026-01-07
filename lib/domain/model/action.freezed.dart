// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Action {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Action);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Action()';
}


}

/// @nodoc
class $ActionCopyWith<$Res>  {
$ActionCopyWith(Action _, $Res Function(Action) __);
}


/// Adds pattern-matching-related methods to [Action].
extension ActionPatterns on Action {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AttackAction value)?  attack,TResult Function( _DefendAction value)?  defend,TResult Function( _FleeAction value)?  flee,TResult Function( _UseItemAction value)?  useItem,TResult Function( _TalkAction value)?  talk,TResult Function( _RestAction value)?  rest,TResult Function( _InspectAction value)?  inspect,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttackAction() when attack != null:
return attack(_that);case _DefendAction() when defend != null:
return defend(_that);case _FleeAction() when flee != null:
return flee(_that);case _UseItemAction() when useItem != null:
return useItem(_that);case _TalkAction() when talk != null:
return talk(_that);case _RestAction() when rest != null:
return rest(_that);case _InspectAction() when inspect != null:
return inspect(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AttackAction value)  attack,required TResult Function( _DefendAction value)  defend,required TResult Function( _FleeAction value)  flee,required TResult Function( _UseItemAction value)  useItem,required TResult Function( _TalkAction value)  talk,required TResult Function( _RestAction value)  rest,required TResult Function( _InspectAction value)  inspect,}){
final _that = this;
switch (_that) {
case _AttackAction():
return attack(_that);case _DefendAction():
return defend(_that);case _FleeAction():
return flee(_that);case _UseItemAction():
return useItem(_that);case _TalkAction():
return talk(_that);case _RestAction():
return rest(_that);case _InspectAction():
return inspect(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AttackAction value)?  attack,TResult? Function( _DefendAction value)?  defend,TResult? Function( _FleeAction value)?  flee,TResult? Function( _UseItemAction value)?  useItem,TResult? Function( _TalkAction value)?  talk,TResult? Function( _RestAction value)?  rest,TResult? Function( _InspectAction value)?  inspect,}){
final _that = this;
switch (_that) {
case _AttackAction() when attack != null:
return attack(_that);case _DefendAction() when defend != null:
return defend(_that);case _FleeAction() when flee != null:
return flee(_that);case _UseItemAction() when useItem != null:
return useItem(_that);case _TalkAction() when talk != null:
return talk(_that);case _RestAction() when rest != null:
return rest(_that);case _InspectAction() when inspect != null:
return inspect(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String targetName,  int? customDamage)?  attack,TResult Function()?  defend,TResult Function()?  flee,TResult Function( String itemName,  String? targetName)?  useItem,TResult Function( String npcName)?  talk,TResult Function()?  rest,TResult Function( String targetName)?  inspect,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttackAction() when attack != null:
return attack(_that.targetName,_that.customDamage);case _DefendAction() when defend != null:
return defend();case _FleeAction() when flee != null:
return flee();case _UseItemAction() when useItem != null:
return useItem(_that.itemName,_that.targetName);case _TalkAction() when talk != null:
return talk(_that.npcName);case _RestAction() when rest != null:
return rest();case _InspectAction() when inspect != null:
return inspect(_that.targetName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String targetName,  int? customDamage)  attack,required TResult Function()  defend,required TResult Function()  flee,required TResult Function( String itemName,  String? targetName)  useItem,required TResult Function( String npcName)  talk,required TResult Function()  rest,required TResult Function( String targetName)  inspect,}) {final _that = this;
switch (_that) {
case _AttackAction():
return attack(_that.targetName,_that.customDamage);case _DefendAction():
return defend();case _FleeAction():
return flee();case _UseItemAction():
return useItem(_that.itemName,_that.targetName);case _TalkAction():
return talk(_that.npcName);case _RestAction():
return rest();case _InspectAction():
return inspect(_that.targetName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String targetName,  int? customDamage)?  attack,TResult? Function()?  defend,TResult? Function()?  flee,TResult? Function( String itemName,  String? targetName)?  useItem,TResult? Function( String npcName)?  talk,TResult? Function()?  rest,TResult? Function( String targetName)?  inspect,}) {final _that = this;
switch (_that) {
case _AttackAction() when attack != null:
return attack(_that.targetName,_that.customDamage);case _DefendAction() when defend != null:
return defend();case _FleeAction() when flee != null:
return flee();case _UseItemAction() when useItem != null:
return useItem(_that.itemName,_that.targetName);case _TalkAction() when talk != null:
return talk(_that.npcName);case _RestAction() when rest != null:
return rest();case _InspectAction() when inspect != null:
return inspect(_that.targetName);case _:
  return null;

}
}

}

/// @nodoc


class _AttackAction extends Action {
  const _AttackAction({required this.targetName, this.customDamage = null}): super._();
  

 final  String targetName;
@JsonKey() final  int? customDamage;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttackActionCopyWith<_AttackAction> get copyWith => __$AttackActionCopyWithImpl<_AttackAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttackAction&&(identical(other.targetName, targetName) || other.targetName == targetName)&&(identical(other.customDamage, customDamage) || other.customDamage == customDamage));
}


@override
int get hashCode => Object.hash(runtimeType,targetName,customDamage);

@override
String toString() {
  return 'Action.attack(targetName: $targetName, customDamage: $customDamage)';
}


}

/// @nodoc
abstract mixin class _$AttackActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$AttackActionCopyWith(_AttackAction value, $Res Function(_AttackAction) _then) = __$AttackActionCopyWithImpl;
@useResult
$Res call({
 String targetName, int? customDamage
});




}
/// @nodoc
class __$AttackActionCopyWithImpl<$Res>
    implements _$AttackActionCopyWith<$Res> {
  __$AttackActionCopyWithImpl(this._self, this._then);

  final _AttackAction _self;
  final $Res Function(_AttackAction) _then;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetName = null,Object? customDamage = freezed,}) {
  return _then(_AttackAction(
targetName: null == targetName ? _self.targetName : targetName // ignore: cast_nullable_to_non_nullable
as String,customDamage: freezed == customDamage ? _self.customDamage : customDamage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _DefendAction extends Action {
  const _DefendAction(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefendAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Action.defend()';
}


}




/// @nodoc


class _FleeAction extends Action {
  const _FleeAction(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleeAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Action.flee()';
}


}




/// @nodoc


class _UseItemAction extends Action {
  const _UseItemAction({required this.itemName, this.targetName = null}): super._();
  

 final  String itemName;
@JsonKey() final  String? targetName;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UseItemActionCopyWith<_UseItemAction> get copyWith => __$UseItemActionCopyWithImpl<_UseItemAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UseItemAction&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.targetName, targetName) || other.targetName == targetName));
}


@override
int get hashCode => Object.hash(runtimeType,itemName,targetName);

@override
String toString() {
  return 'Action.useItem(itemName: $itemName, targetName: $targetName)';
}


}

/// @nodoc
abstract mixin class _$UseItemActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$UseItemActionCopyWith(_UseItemAction value, $Res Function(_UseItemAction) _then) = __$UseItemActionCopyWithImpl;
@useResult
$Res call({
 String itemName, String? targetName
});




}
/// @nodoc
class __$UseItemActionCopyWithImpl<$Res>
    implements _$UseItemActionCopyWith<$Res> {
  __$UseItemActionCopyWithImpl(this._self, this._then);

  final _UseItemAction _self;
  final $Res Function(_UseItemAction) _then;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemName = null,Object? targetName = freezed,}) {
  return _then(_UseItemAction(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,targetName: freezed == targetName ? _self.targetName : targetName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _TalkAction extends Action {
  const _TalkAction({required this.npcName}): super._();
  

 final  String npcName;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TalkActionCopyWith<_TalkAction> get copyWith => __$TalkActionCopyWithImpl<_TalkAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TalkAction&&(identical(other.npcName, npcName) || other.npcName == npcName));
}


@override
int get hashCode => Object.hash(runtimeType,npcName);

@override
String toString() {
  return 'Action.talk(npcName: $npcName)';
}


}

/// @nodoc
abstract mixin class _$TalkActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$TalkActionCopyWith(_TalkAction value, $Res Function(_TalkAction) _then) = __$TalkActionCopyWithImpl;
@useResult
$Res call({
 String npcName
});




}
/// @nodoc
class __$TalkActionCopyWithImpl<$Res>
    implements _$TalkActionCopyWith<$Res> {
  __$TalkActionCopyWithImpl(this._self, this._then);

  final _TalkAction _self;
  final $Res Function(_TalkAction) _then;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? npcName = null,}) {
  return _then(_TalkAction(
npcName: null == npcName ? _self.npcName : npcName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RestAction extends Action {
  const _RestAction(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Action.rest()';
}


}




/// @nodoc


class _InspectAction extends Action {
  const _InspectAction({required this.targetName}): super._();
  

 final  String targetName;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectActionCopyWith<_InspectAction> get copyWith => __$InspectActionCopyWithImpl<_InspectAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectAction&&(identical(other.targetName, targetName) || other.targetName == targetName));
}


@override
int get hashCode => Object.hash(runtimeType,targetName);

@override
String toString() {
  return 'Action.inspect(targetName: $targetName)';
}


}

/// @nodoc
abstract mixin class _$InspectActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$InspectActionCopyWith(_InspectAction value, $Res Function(_InspectAction) _then) = __$InspectActionCopyWithImpl;
@useResult
$Res call({
 String targetName
});




}
/// @nodoc
class __$InspectActionCopyWithImpl<$Res>
    implements _$InspectActionCopyWith<$Res> {
  __$InspectActionCopyWithImpl(this._self, this._then);

  final _InspectAction _self;
  final $Res Function(_InspectAction) _then;

/// Create a copy of Action
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetName = null,}) {
  return _then(_InspectAction(
targetName: null == targetName ? _self.targetName : targetName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
