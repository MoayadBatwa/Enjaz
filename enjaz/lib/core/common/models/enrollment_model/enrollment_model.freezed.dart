// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnrollmentModel {

 String get id; String get eventId; String get userId;
/// Create a copy of EnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentModelCopyWith<EnrollmentModel> get copyWith => _$EnrollmentModelCopyWithImpl<EnrollmentModel>(this as EnrollmentModel, _$identity);

  /// Serializes this EnrollmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnrollmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventId,userId);

@override
String toString() {
  return 'EnrollmentModel(id: $id, eventId: $eventId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $EnrollmentModelCopyWith<$Res>  {
  factory $EnrollmentModelCopyWith(EnrollmentModel value, $Res Function(EnrollmentModel) _then) = _$EnrollmentModelCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String userId
});




}
/// @nodoc
class _$EnrollmentModelCopyWithImpl<$Res>
    implements $EnrollmentModelCopyWith<$Res> {
  _$EnrollmentModelCopyWithImpl(this._self, this._then);

  final EnrollmentModel _self;
  final $Res Function(EnrollmentModel) _then;

/// Create a copy of EnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EnrollmentModel].
extension EnrollmentModelPatterns on EnrollmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnrollmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnrollmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnrollmentModel value)  $default,){
final _that = this;
switch (_that) {
case _EnrollmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnrollmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _EnrollmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnrollmentModel() when $default != null:
return $default(_that.id,_that.eventId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String userId)  $default,) {final _that = this;
switch (_that) {
case _EnrollmentModel():
return $default(_that.id,_that.eventId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _EnrollmentModel() when $default != null:
return $default(_that.id,_that.eventId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _EnrollmentModel implements EnrollmentModel {
  const _EnrollmentModel({required this.id, required this.eventId, required this.userId});
  factory _EnrollmentModel.fromJson(Map<String, dynamic> json) => _$EnrollmentModelFromJson(json);

@override final  String id;
@override final  String eventId;
@override final  String userId;

/// Create a copy of EnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentModelCopyWith<_EnrollmentModel> get copyWith => __$EnrollmentModelCopyWithImpl<_EnrollmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnrollmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventId,userId);

@override
String toString() {
  return 'EnrollmentModel(id: $id, eventId: $eventId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentModelCopyWith<$Res> implements $EnrollmentModelCopyWith<$Res> {
  factory _$EnrollmentModelCopyWith(_EnrollmentModel value, $Res Function(_EnrollmentModel) _then) = __$EnrollmentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String userId
});




}
/// @nodoc
class __$EnrollmentModelCopyWithImpl<$Res>
    implements _$EnrollmentModelCopyWith<$Res> {
  __$EnrollmentModelCopyWithImpl(this._self, this._then);

  final _EnrollmentModel _self;
  final $Res Function(_EnrollmentModel) _then;

/// Create a copy of EnrollmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? userId = null,}) {
  return _then(_EnrollmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
