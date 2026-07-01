// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniversityStatModel {

 String get code; int get clubCount; int get eventCount; int get memberCount; int get enrollmentCount; double get capacityUtilization;
/// Create a copy of UniversityStatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UniversityStatModelCopyWith<UniversityStatModel> get copyWith => _$UniversityStatModelCopyWithImpl<UniversityStatModel>(this as UniversityStatModel, _$identity);

  /// Serializes this UniversityStatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UniversityStatModel&&(identical(other.code, code) || other.code == code)&&(identical(other.clubCount, clubCount) || other.clubCount == clubCount)&&(identical(other.eventCount, eventCount) || other.eventCount == eventCount)&&(identical(other.memberCount, memberCount) || other.memberCount == memberCount)&&(identical(other.enrollmentCount, enrollmentCount) || other.enrollmentCount == enrollmentCount)&&(identical(other.capacityUtilization, capacityUtilization) || other.capacityUtilization == capacityUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,clubCount,eventCount,memberCount,enrollmentCount,capacityUtilization);

@override
String toString() {
  return 'UniversityStatModel(code: $code, clubCount: $clubCount, eventCount: $eventCount, memberCount: $memberCount, enrollmentCount: $enrollmentCount, capacityUtilization: $capacityUtilization)';
}


}

/// @nodoc
abstract mixin class $UniversityStatModelCopyWith<$Res>  {
  factory $UniversityStatModelCopyWith(UniversityStatModel value, $Res Function(UniversityStatModel) _then) = _$UniversityStatModelCopyWithImpl;
@useResult
$Res call({
 String code, int clubCount, int eventCount, int memberCount, int enrollmentCount, double capacityUtilization
});




}
/// @nodoc
class _$UniversityStatModelCopyWithImpl<$Res>
    implements $UniversityStatModelCopyWith<$Res> {
  _$UniversityStatModelCopyWithImpl(this._self, this._then);

  final UniversityStatModel _self;
  final $Res Function(UniversityStatModel) _then;

/// Create a copy of UniversityStatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? clubCount = null,Object? eventCount = null,Object? memberCount = null,Object? enrollmentCount = null,Object? capacityUtilization = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,clubCount: null == clubCount ? _self.clubCount : clubCount // ignore: cast_nullable_to_non_nullable
as int,eventCount: null == eventCount ? _self.eventCount : eventCount // ignore: cast_nullable_to_non_nullable
as int,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,enrollmentCount: null == enrollmentCount ? _self.enrollmentCount : enrollmentCount // ignore: cast_nullable_to_non_nullable
as int,capacityUtilization: null == capacityUtilization ? _self.capacityUtilization : capacityUtilization // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UniversityStatModel].
extension UniversityStatModelPatterns on UniversityStatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UniversityStatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UniversityStatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UniversityStatModel value)  $default,){
final _that = this;
switch (_that) {
case _UniversityStatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UniversityStatModel value)?  $default,){
final _that = this;
switch (_that) {
case _UniversityStatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  int clubCount,  int eventCount,  int memberCount,  int enrollmentCount,  double capacityUtilization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UniversityStatModel() when $default != null:
return $default(_that.code,_that.clubCount,_that.eventCount,_that.memberCount,_that.enrollmentCount,_that.capacityUtilization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  int clubCount,  int eventCount,  int memberCount,  int enrollmentCount,  double capacityUtilization)  $default,) {final _that = this;
switch (_that) {
case _UniversityStatModel():
return $default(_that.code,_that.clubCount,_that.eventCount,_that.memberCount,_that.enrollmentCount,_that.capacityUtilization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  int clubCount,  int eventCount,  int memberCount,  int enrollmentCount,  double capacityUtilization)?  $default,) {final _that = this;
switch (_that) {
case _UniversityStatModel() when $default != null:
return $default(_that.code,_that.clubCount,_that.eventCount,_that.memberCount,_that.enrollmentCount,_that.capacityUtilization);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _UniversityStatModel implements UniversityStatModel {
  const _UniversityStatModel({required this.code, required this.clubCount, required this.eventCount, required this.memberCount, required this.enrollmentCount, required this.capacityUtilization});
  factory _UniversityStatModel.fromJson(Map<String, dynamic> json) => _$UniversityStatModelFromJson(json);

@override final  String code;
@override final  int clubCount;
@override final  int eventCount;
@override final  int memberCount;
@override final  int enrollmentCount;
@override final  double capacityUtilization;

/// Create a copy of UniversityStatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UniversityStatModelCopyWith<_UniversityStatModel> get copyWith => __$UniversityStatModelCopyWithImpl<_UniversityStatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UniversityStatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UniversityStatModel&&(identical(other.code, code) || other.code == code)&&(identical(other.clubCount, clubCount) || other.clubCount == clubCount)&&(identical(other.eventCount, eventCount) || other.eventCount == eventCount)&&(identical(other.memberCount, memberCount) || other.memberCount == memberCount)&&(identical(other.enrollmentCount, enrollmentCount) || other.enrollmentCount == enrollmentCount)&&(identical(other.capacityUtilization, capacityUtilization) || other.capacityUtilization == capacityUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,clubCount,eventCount,memberCount,enrollmentCount,capacityUtilization);

@override
String toString() {
  return 'UniversityStatModel(code: $code, clubCount: $clubCount, eventCount: $eventCount, memberCount: $memberCount, enrollmentCount: $enrollmentCount, capacityUtilization: $capacityUtilization)';
}


}

/// @nodoc
abstract mixin class _$UniversityStatModelCopyWith<$Res> implements $UniversityStatModelCopyWith<$Res> {
  factory _$UniversityStatModelCopyWith(_UniversityStatModel value, $Res Function(_UniversityStatModel) _then) = __$UniversityStatModelCopyWithImpl;
@override @useResult
$Res call({
 String code, int clubCount, int eventCount, int memberCount, int enrollmentCount, double capacityUtilization
});




}
/// @nodoc
class __$UniversityStatModelCopyWithImpl<$Res>
    implements _$UniversityStatModelCopyWith<$Res> {
  __$UniversityStatModelCopyWithImpl(this._self, this._then);

  final _UniversityStatModel _self;
  final $Res Function(_UniversityStatModel) _then;

/// Create a copy of UniversityStatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? clubCount = null,Object? eventCount = null,Object? memberCount = null,Object? enrollmentCount = null,Object? capacityUtilization = null,}) {
  return _then(_UniversityStatModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,clubCount: null == clubCount ? _self.clubCount : clubCount // ignore: cast_nullable_to_non_nullable
as int,eventCount: null == eventCount ? _self.eventCount : eventCount // ignore: cast_nullable_to_non_nullable
as int,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,enrollmentCount: null == enrollmentCount ? _self.enrollmentCount : enrollmentCount // ignore: cast_nullable_to_non_nullable
as int,capacityUtilization: null == capacityUtilization ? _self.capacityUtilization : capacityUtilization // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
