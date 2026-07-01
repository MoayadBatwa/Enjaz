// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archived_club_events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArchivedClubEventsModel {

 String get id; String get title; String get description; DateTime get dateAt; String get place; int get capacity; String get createdAt; String get planId; String get startTime; String get endTime; bool get isOpen; String get status; String? get mapUrl; bool get hasReport;
/// Create a copy of ArchivedClubEventsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchivedClubEventsModelCopyWith<ArchivedClubEventsModel> get copyWith => _$ArchivedClubEventsModelCopyWithImpl<ArchivedClubEventsModel>(this as ArchivedClubEventsModel, _$identity);

  /// Serializes this ArchivedClubEventsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchivedClubEventsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.hasReport, hasReport) || other.hasReport == hasReport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dateAt,place,capacity,createdAt,planId,startTime,endTime,isOpen,status,mapUrl,hasReport);

@override
String toString() {
  return 'ArchivedClubEventsModel(id: $id, title: $title, description: $description, dateAt: $dateAt, place: $place, capacity: $capacity, createdAt: $createdAt, planId: $planId, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, status: $status, mapUrl: $mapUrl, hasReport: $hasReport)';
}


}

/// @nodoc
abstract mixin class $ArchivedClubEventsModelCopyWith<$Res>  {
  factory $ArchivedClubEventsModelCopyWith(ArchivedClubEventsModel value, $Res Function(ArchivedClubEventsModel) _then) = _$ArchivedClubEventsModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, DateTime dateAt, String place, int capacity, String createdAt, String planId, String startTime, String endTime, bool isOpen, String status, String? mapUrl, bool hasReport
});




}
/// @nodoc
class _$ArchivedClubEventsModelCopyWithImpl<$Res>
    implements $ArchivedClubEventsModelCopyWith<$Res> {
  _$ArchivedClubEventsModelCopyWithImpl(this._self, this._then);

  final ArchivedClubEventsModel _self;
  final $Res Function(ArchivedClubEventsModel) _then;

/// Create a copy of ArchivedClubEventsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? createdAt = null,Object? planId = null,Object? startTime = null,Object? endTime = null,Object? isOpen = null,Object? status = null,Object? mapUrl = freezed,Object? hasReport = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,hasReport: null == hasReport ? _self.hasReport : hasReport // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArchivedClubEventsModel].
extension ArchivedClubEventsModelPatterns on ArchivedClubEventsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArchivedClubEventsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArchivedClubEventsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArchivedClubEventsModel value)  $default,){
final _that = this;
switch (_that) {
case _ArchivedClubEventsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArchivedClubEventsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ArchivedClubEventsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  String createdAt,  String planId,  String startTime,  String endTime,  bool isOpen,  String status,  String? mapUrl,  bool hasReport)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArchivedClubEventsModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.createdAt,_that.planId,_that.startTime,_that.endTime,_that.isOpen,_that.status,_that.mapUrl,_that.hasReport);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  String createdAt,  String planId,  String startTime,  String endTime,  bool isOpen,  String status,  String? mapUrl,  bool hasReport)  $default,) {final _that = this;
switch (_that) {
case _ArchivedClubEventsModel():
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.createdAt,_that.planId,_that.startTime,_that.endTime,_that.isOpen,_that.status,_that.mapUrl,_that.hasReport);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  String createdAt,  String planId,  String startTime,  String endTime,  bool isOpen,  String status,  String? mapUrl,  bool hasReport)?  $default,) {final _that = this;
switch (_that) {
case _ArchivedClubEventsModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.createdAt,_that.planId,_that.startTime,_that.endTime,_that.isOpen,_that.status,_that.mapUrl,_that.hasReport);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _ArchivedClubEventsModel implements ArchivedClubEventsModel {
  const _ArchivedClubEventsModel({required this.id, required this.title, required this.description, required this.dateAt, required this.place, required this.capacity, required this.createdAt, required this.planId, required this.startTime, required this.endTime, required this.isOpen, required this.status, required this.mapUrl, required this.hasReport});
  factory _ArchivedClubEventsModel.fromJson(Map<String, dynamic> json) => _$ArchivedClubEventsModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  DateTime dateAt;
@override final  String place;
@override final  int capacity;
@override final  String createdAt;
@override final  String planId;
@override final  String startTime;
@override final  String endTime;
@override final  bool isOpen;
@override final  String status;
@override final  String? mapUrl;
@override final  bool hasReport;

/// Create a copy of ArchivedClubEventsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchivedClubEventsModelCopyWith<_ArchivedClubEventsModel> get copyWith => __$ArchivedClubEventsModelCopyWithImpl<_ArchivedClubEventsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArchivedClubEventsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArchivedClubEventsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.hasReport, hasReport) || other.hasReport == hasReport));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dateAt,place,capacity,createdAt,planId,startTime,endTime,isOpen,status,mapUrl,hasReport);

@override
String toString() {
  return 'ArchivedClubEventsModel(id: $id, title: $title, description: $description, dateAt: $dateAt, place: $place, capacity: $capacity, createdAt: $createdAt, planId: $planId, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, status: $status, mapUrl: $mapUrl, hasReport: $hasReport)';
}


}

/// @nodoc
abstract mixin class _$ArchivedClubEventsModelCopyWith<$Res> implements $ArchivedClubEventsModelCopyWith<$Res> {
  factory _$ArchivedClubEventsModelCopyWith(_ArchivedClubEventsModel value, $Res Function(_ArchivedClubEventsModel) _then) = __$ArchivedClubEventsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, DateTime dateAt, String place, int capacity, String createdAt, String planId, String startTime, String endTime, bool isOpen, String status, String? mapUrl, bool hasReport
});




}
/// @nodoc
class __$ArchivedClubEventsModelCopyWithImpl<$Res>
    implements _$ArchivedClubEventsModelCopyWith<$Res> {
  __$ArchivedClubEventsModelCopyWithImpl(this._self, this._then);

  final _ArchivedClubEventsModel _self;
  final $Res Function(_ArchivedClubEventsModel) _then;

/// Create a copy of ArchivedClubEventsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? createdAt = null,Object? planId = null,Object? startTime = null,Object? endTime = null,Object? isOpen = null,Object? status = null,Object? mapUrl = freezed,Object? hasReport = null,}) {
  return _then(_ArchivedClubEventsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,hasReport: null == hasReport ? _self.hasReport : hasReport // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
