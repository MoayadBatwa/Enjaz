// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventModel {

 String get id; String get title; String get description; DateTime get dateAt; String get place; int get capacity; DateTime get createdAt; String get planId; String get mapUrl; String get startTime; String get endTime; bool get isOpen; String get status;
/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventModelCopyWith<EventModel> get copyWith => _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dateAt,place,capacity,createdAt,planId,mapUrl,startTime,endTime,isOpen,status);

@override
String toString() {
  return 'EventModel(id: $id, title: $title, description: $description, dateAt: $dateAt, place: $place, capacity: $capacity, createdAt: $createdAt, planId: $planId, mapUrl: $mapUrl, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, status: $status)';
}


}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res>  {
  factory $EventModelCopyWith(EventModel value, $Res Function(EventModel) _then) = _$EventModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, DateTime dateAt, String place, int capacity, DateTime createdAt, String planId, String mapUrl, String startTime, String endTime, bool isOpen, String status
});




}
/// @nodoc
class _$EventModelCopyWithImpl<$Res>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._self, this._then);

  final EventModel _self;
  final $Res Function(EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? createdAt = null,Object? planId = null,Object? mapUrl = null,Object? startTime = null,Object? endTime = null,Object? isOpen = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,mapUrl: null == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EventModel].
extension EventModelPatterns on EventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventModel value)  $default,){
final _that = this;
switch (_that) {
case _EventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  DateTime createdAt,  String planId,  String mapUrl,  String startTime,  String endTime,  bool isOpen,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.createdAt,_that.planId,_that.mapUrl,_that.startTime,_that.endTime,_that.isOpen,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  DateTime createdAt,  String planId,  String mapUrl,  String startTime,  String endTime,  bool isOpen,  String status)  $default,) {final _that = this;
switch (_that) {
case _EventModel():
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.createdAt,_that.planId,_that.mapUrl,_that.startTime,_that.endTime,_that.isOpen,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  DateTime createdAt,  String planId,  String mapUrl,  String startTime,  String endTime,  bool isOpen,  String status)?  $default,) {final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.createdAt,_that.planId,_that.mapUrl,_that.startTime,_that.endTime,_that.isOpen,_that.status);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _EventModel implements EventModel {
  const _EventModel({required this.id, required this.title, required this.description, required this.dateAt, required this.place, required this.capacity, required this.createdAt, required this.planId, required this.mapUrl, required this.startTime, required this.endTime, required this.isOpen, required this.status});
  factory _EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  DateTime dateAt;
@override final  String place;
@override final  int capacity;
@override final  DateTime createdAt;
@override final  String planId;
@override final  String mapUrl;
@override final  String startTime;
@override final  String endTime;
@override final  bool isOpen;
@override final  String status;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventModelCopyWith<_EventModel> get copyWith => __$EventModelCopyWithImpl<_EventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dateAt,place,capacity,createdAt,planId,mapUrl,startTime,endTime,isOpen,status);

@override
String toString() {
  return 'EventModel(id: $id, title: $title, description: $description, dateAt: $dateAt, place: $place, capacity: $capacity, createdAt: $createdAt, planId: $planId, mapUrl: $mapUrl, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, status: $status)';
}


}

/// @nodoc
abstract mixin class _$EventModelCopyWith<$Res> implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(_EventModel value, $Res Function(_EventModel) _then) = __$EventModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, DateTime dateAt, String place, int capacity, DateTime createdAt, String planId, String mapUrl, String startTime, String endTime, bool isOpen, String status
});




}
/// @nodoc
class __$EventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(this._self, this._then);

  final _EventModel _self;
  final $Res Function(_EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? createdAt = null,Object? planId = null,Object? mapUrl = null,Object? startTime = null,Object? endTime = null,Object? isOpen = null,Object? status = null,}) {
  return _then(_EventModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,mapUrl: null == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
