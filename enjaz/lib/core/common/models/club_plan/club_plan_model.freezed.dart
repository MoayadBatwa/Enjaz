// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClubPlanModel {

 String get id;@JsonKey(name: "clubs") ClubModel get club; DateTime get createdAt;
/// Create a copy of ClubPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubPlanModelCopyWith<ClubPlanModel> get copyWith => _$ClubPlanModelCopyWithImpl<ClubPlanModel>(this as ClubPlanModel, _$identity);

  /// Serializes this ClubPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.club, club) || other.club == club)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,club,createdAt);

@override
String toString() {
  return 'ClubPlanModel(id: $id, club: $club, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ClubPlanModelCopyWith<$Res>  {
  factory $ClubPlanModelCopyWith(ClubPlanModel value, $Res Function(ClubPlanModel) _then) = _$ClubPlanModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: "clubs") ClubModel club, DateTime createdAt
});


$ClubModelCopyWith<$Res> get club;

}
/// @nodoc
class _$ClubPlanModelCopyWithImpl<$Res>
    implements $ClubPlanModelCopyWith<$Res> {
  _$ClubPlanModelCopyWithImpl(this._self, this._then);

  final ClubPlanModel _self;
  final $Res Function(ClubPlanModel) _then;

/// Create a copy of ClubPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? club = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,club: null == club ? _self.club : club // ignore: cast_nullable_to_non_nullable
as ClubModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ClubPlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClubModelCopyWith<$Res> get club {
  
  return $ClubModelCopyWith<$Res>(_self.club, (value) {
    return _then(_self.copyWith(club: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClubPlanModel].
extension ClubPlanModelPatterns on ClubPlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClubPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClubPlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClubPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _ClubPlanModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClubPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClubPlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: "clubs")  ClubModel club,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClubPlanModel() when $default != null:
return $default(_that.id,_that.club,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: "clubs")  ClubModel club,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ClubPlanModel():
return $default(_that.id,_that.club,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: "clubs")  ClubModel club,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ClubPlanModel() when $default != null:
return $default(_that.id,_that.club,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _ClubPlanModel implements ClubPlanModel {
  const _ClubPlanModel({required this.id, @JsonKey(name: "clubs") required this.club, required this.createdAt});
  factory _ClubPlanModel.fromJson(Map<String, dynamic> json) => _$ClubPlanModelFromJson(json);

@override final  String id;
@override@JsonKey(name: "clubs") final  ClubModel club;
@override final  DateTime createdAt;

/// Create a copy of ClubPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClubPlanModelCopyWith<_ClubPlanModel> get copyWith => __$ClubPlanModelCopyWithImpl<_ClubPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClubPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClubPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.club, club) || other.club == club)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,club,createdAt);

@override
String toString() {
  return 'ClubPlanModel(id: $id, club: $club, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ClubPlanModelCopyWith<$Res> implements $ClubPlanModelCopyWith<$Res> {
  factory _$ClubPlanModelCopyWith(_ClubPlanModel value, $Res Function(_ClubPlanModel) _then) = __$ClubPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: "clubs") ClubModel club, DateTime createdAt
});


@override $ClubModelCopyWith<$Res> get club;

}
/// @nodoc
class __$ClubPlanModelCopyWithImpl<$Res>
    implements _$ClubPlanModelCopyWith<$Res> {
  __$ClubPlanModelCopyWithImpl(this._self, this._then);

  final _ClubPlanModel _self;
  final $Res Function(_ClubPlanModel) _then;

/// Create a copy of ClubPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? club = null,Object? createdAt = null,}) {
  return _then(_ClubPlanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,club: null == club ? _self.club : club // ignore: cast_nullable_to_non_nullable
as ClubModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ClubPlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClubModelCopyWith<$Res> get club {
  
  return $ClubModelCopyWith<$Res>(_self.club, (value) {
    return _then(_self.copyWith(club: value));
  });
}
}

// dart format on
