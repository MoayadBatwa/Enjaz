// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewReportModel {

 String get id; String get attendance; String get challenges; String get recommendations; DateTime get createdAt; String get file; String get eventId; String get eventName;
/// Create a copy of ViewReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewReportModelCopyWith<ViewReportModel> get copyWith => _$ViewReportModelCopyWithImpl<ViewReportModel>(this as ViewReportModel, _$identity);

  /// Serializes this ViewReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.attendance, attendance) || other.attendance == attendance)&&(identical(other.challenges, challenges) || other.challenges == challenges)&&(identical(other.recommendations, recommendations) || other.recommendations == recommendations)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.file, file) || other.file == file)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventName, eventName) || other.eventName == eventName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attendance,challenges,recommendations,createdAt,file,eventId,eventName);

@override
String toString() {
  return 'ViewReportModel(id: $id, attendance: $attendance, challenges: $challenges, recommendations: $recommendations, createdAt: $createdAt, file: $file, eventId: $eventId, eventName: $eventName)';
}


}

/// @nodoc
abstract mixin class $ViewReportModelCopyWith<$Res>  {
  factory $ViewReportModelCopyWith(ViewReportModel value, $Res Function(ViewReportModel) _then) = _$ViewReportModelCopyWithImpl;
@useResult
$Res call({
 String id, String attendance, String challenges, String recommendations, DateTime createdAt, String file, String eventId, String eventName
});




}
/// @nodoc
class _$ViewReportModelCopyWithImpl<$Res>
    implements $ViewReportModelCopyWith<$Res> {
  _$ViewReportModelCopyWithImpl(this._self, this._then);

  final ViewReportModel _self;
  final $Res Function(ViewReportModel) _then;

/// Create a copy of ViewReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attendance = null,Object? challenges = null,Object? recommendations = null,Object? createdAt = null,Object? file = null,Object? eventId = null,Object? eventName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as String,challenges: null == challenges ? _self.challenges : challenges // ignore: cast_nullable_to_non_nullable
as String,recommendations: null == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ViewReportModel].
extension ViewReportModelPatterns on ViewReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewReportModel value)  $default,){
final _that = this;
switch (_that) {
case _ViewReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _ViewReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String attendance,  String challenges,  String recommendations,  DateTime createdAt,  String file,  String eventId,  String eventName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewReportModel() when $default != null:
return $default(_that.id,_that.attendance,_that.challenges,_that.recommendations,_that.createdAt,_that.file,_that.eventId,_that.eventName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String attendance,  String challenges,  String recommendations,  DateTime createdAt,  String file,  String eventId,  String eventName)  $default,) {final _that = this;
switch (_that) {
case _ViewReportModel():
return $default(_that.id,_that.attendance,_that.challenges,_that.recommendations,_that.createdAt,_that.file,_that.eventId,_that.eventName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String attendance,  String challenges,  String recommendations,  DateTime createdAt,  String file,  String eventId,  String eventName)?  $default,) {final _that = this;
switch (_that) {
case _ViewReportModel() when $default != null:
return $default(_that.id,_that.attendance,_that.challenges,_that.recommendations,_that.createdAt,_that.file,_that.eventId,_that.eventName);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _ViewReportModel implements ViewReportModel {
  const _ViewReportModel({required this.id, required this.attendance, required this.challenges, required this.recommendations, required this.createdAt, required this.file, required this.eventId, required this.eventName});
  factory _ViewReportModel.fromJson(Map<String, dynamic> json) => _$ViewReportModelFromJson(json);

@override final  String id;
@override final  String attendance;
@override final  String challenges;
@override final  String recommendations;
@override final  DateTime createdAt;
@override final  String file;
@override final  String eventId;
@override final  String eventName;

/// Create a copy of ViewReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewReportModelCopyWith<_ViewReportModel> get copyWith => __$ViewReportModelCopyWithImpl<_ViewReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.attendance, attendance) || other.attendance == attendance)&&(identical(other.challenges, challenges) || other.challenges == challenges)&&(identical(other.recommendations, recommendations) || other.recommendations == recommendations)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.file, file) || other.file == file)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventName, eventName) || other.eventName == eventName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attendance,challenges,recommendations,createdAt,file,eventId,eventName);

@override
String toString() {
  return 'ViewReportModel(id: $id, attendance: $attendance, challenges: $challenges, recommendations: $recommendations, createdAt: $createdAt, file: $file, eventId: $eventId, eventName: $eventName)';
}


}

/// @nodoc
abstract mixin class _$ViewReportModelCopyWith<$Res> implements $ViewReportModelCopyWith<$Res> {
  factory _$ViewReportModelCopyWith(_ViewReportModel value, $Res Function(_ViewReportModel) _then) = __$ViewReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String attendance, String challenges, String recommendations, DateTime createdAt, String file, String eventId, String eventName
});




}
/// @nodoc
class __$ViewReportModelCopyWithImpl<$Res>
    implements _$ViewReportModelCopyWith<$Res> {
  __$ViewReportModelCopyWithImpl(this._self, this._then);

  final _ViewReportModel _self;
  final $Res Function(_ViewReportModel) _then;

/// Create a copy of ViewReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attendance = null,Object? challenges = null,Object? recommendations = null,Object? createdAt = null,Object? file = null,Object? eventId = null,Object? eventName = null,}) {
  return _then(_ViewReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as String,challenges: null == challenges ? _self.challenges : challenges // ignore: cast_nullable_to_non_nullable
as String,recommendations: null == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
