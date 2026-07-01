// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventDetailsModel {

 String get eventId; String get title; String? get description; String? get mapUrl; DateTime get dateAt; String get place; int get capacity; String get startTime; String get endTime; bool get isOpen; String get clubName; String get clubLogo; String get universityName; int get currentCount; String get status; bool get isEnrolled;
/// Create a copy of EventDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventDetailsModelCopyWith<EventDetailsModel> get copyWith => _$EventDetailsModelCopyWithImpl<EventDetailsModel>(this as EventDetailsModel, _$identity);

  /// Serializes this EventDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDetailsModel&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.clubName, clubName) || other.clubName == clubName)&&(identical(other.clubLogo, clubLogo) || other.clubLogo == clubLogo)&&(identical(other.universityName, universityName) || other.universityName == universityName)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.isEnrolled, isEnrolled) || other.isEnrolled == isEnrolled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,description,mapUrl,dateAt,place,capacity,startTime,endTime,isOpen,clubName,clubLogo,universityName,currentCount,status,isEnrolled);

@override
String toString() {
  return 'EventDetailsModel(eventId: $eventId, title: $title, description: $description, mapUrl: $mapUrl, dateAt: $dateAt, place: $place, capacity: $capacity, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, clubName: $clubName, clubLogo: $clubLogo, universityName: $universityName, currentCount: $currentCount, status: $status, isEnrolled: $isEnrolled)';
}


}

/// @nodoc
abstract mixin class $EventDetailsModelCopyWith<$Res>  {
  factory $EventDetailsModelCopyWith(EventDetailsModel value, $Res Function(EventDetailsModel) _then) = _$EventDetailsModelCopyWithImpl;
@useResult
$Res call({
 String eventId, String title, String? description, String? mapUrl, DateTime dateAt, String place, int capacity, String startTime, String endTime, bool isOpen, String clubName, String clubLogo, String universityName, int currentCount, String status, bool isEnrolled
});




}
/// @nodoc
class _$EventDetailsModelCopyWithImpl<$Res>
    implements $EventDetailsModelCopyWith<$Res> {
  _$EventDetailsModelCopyWithImpl(this._self, this._then);

  final EventDetailsModel _self;
  final $Res Function(EventDetailsModel) _then;

/// Create a copy of EventDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? title = null,Object? description = freezed,Object? mapUrl = freezed,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? startTime = null,Object? endTime = null,Object? isOpen = null,Object? clubName = null,Object? clubLogo = null,Object? universityName = null,Object? currentCount = null,Object? status = null,Object? isEnrolled = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,clubName: null == clubName ? _self.clubName : clubName // ignore: cast_nullable_to_non_nullable
as String,clubLogo: null == clubLogo ? _self.clubLogo : clubLogo // ignore: cast_nullable_to_non_nullable
as String,universityName: null == universityName ? _self.universityName : universityName // ignore: cast_nullable_to_non_nullable
as String,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isEnrolled: null == isEnrolled ? _self.isEnrolled : isEnrolled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventDetailsModel].
extension EventDetailsModelPatterns on EventDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _EventDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String eventId,  String title,  String? description,  String? mapUrl,  DateTime dateAt,  String place,  int capacity,  String startTime,  String endTime,  bool isOpen,  String clubName,  String clubLogo,  String universityName,  int currentCount,  String status,  bool isEnrolled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventDetailsModel() when $default != null:
return $default(_that.eventId,_that.title,_that.description,_that.mapUrl,_that.dateAt,_that.place,_that.capacity,_that.startTime,_that.endTime,_that.isOpen,_that.clubName,_that.clubLogo,_that.universityName,_that.currentCount,_that.status,_that.isEnrolled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String eventId,  String title,  String? description,  String? mapUrl,  DateTime dateAt,  String place,  int capacity,  String startTime,  String endTime,  bool isOpen,  String clubName,  String clubLogo,  String universityName,  int currentCount,  String status,  bool isEnrolled)  $default,) {final _that = this;
switch (_that) {
case _EventDetailsModel():
return $default(_that.eventId,_that.title,_that.description,_that.mapUrl,_that.dateAt,_that.place,_that.capacity,_that.startTime,_that.endTime,_that.isOpen,_that.clubName,_that.clubLogo,_that.universityName,_that.currentCount,_that.status,_that.isEnrolled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String eventId,  String title,  String? description,  String? mapUrl,  DateTime dateAt,  String place,  int capacity,  String startTime,  String endTime,  bool isOpen,  String clubName,  String clubLogo,  String universityName,  int currentCount,  String status,  bool isEnrolled)?  $default,) {final _that = this;
switch (_that) {
case _EventDetailsModel() when $default != null:
return $default(_that.eventId,_that.title,_that.description,_that.mapUrl,_that.dateAt,_that.place,_that.capacity,_that.startTime,_that.endTime,_that.isOpen,_that.clubName,_that.clubLogo,_that.universityName,_that.currentCount,_that.status,_that.isEnrolled);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _EventDetailsModel implements EventDetailsModel {
  const _EventDetailsModel({required this.eventId, required this.title, this.description, this.mapUrl, required this.dateAt, required this.place, required this.capacity, required this.startTime, required this.endTime, required this.isOpen, required this.clubName, required this.clubLogo, required this.universityName, required this.currentCount, required this.status, required this.isEnrolled});
  factory _EventDetailsModel.fromJson(Map<String, dynamic> json) => _$EventDetailsModelFromJson(json);

@override final  String eventId;
@override final  String title;
@override final  String? description;
@override final  String? mapUrl;
@override final  DateTime dateAt;
@override final  String place;
@override final  int capacity;
@override final  String startTime;
@override final  String endTime;
@override final  bool isOpen;
@override final  String clubName;
@override final  String clubLogo;
@override final  String universityName;
@override final  int currentCount;
@override final  String status;
@override final  bool isEnrolled;

/// Create a copy of EventDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventDetailsModelCopyWith<_EventDetailsModel> get copyWith => __$EventDetailsModelCopyWithImpl<_EventDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventDetailsModel&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.clubName, clubName) || other.clubName == clubName)&&(identical(other.clubLogo, clubLogo) || other.clubLogo == clubLogo)&&(identical(other.universityName, universityName) || other.universityName == universityName)&&(identical(other.currentCount, currentCount) || other.currentCount == currentCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.isEnrolled, isEnrolled) || other.isEnrolled == isEnrolled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,title,description,mapUrl,dateAt,place,capacity,startTime,endTime,isOpen,clubName,clubLogo,universityName,currentCount,status,isEnrolled);

@override
String toString() {
  return 'EventDetailsModel(eventId: $eventId, title: $title, description: $description, mapUrl: $mapUrl, dateAt: $dateAt, place: $place, capacity: $capacity, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, clubName: $clubName, clubLogo: $clubLogo, universityName: $universityName, currentCount: $currentCount, status: $status, isEnrolled: $isEnrolled)';
}


}

/// @nodoc
abstract mixin class _$EventDetailsModelCopyWith<$Res> implements $EventDetailsModelCopyWith<$Res> {
  factory _$EventDetailsModelCopyWith(_EventDetailsModel value, $Res Function(_EventDetailsModel) _then) = __$EventDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String eventId, String title, String? description, String? mapUrl, DateTime dateAt, String place, int capacity, String startTime, String endTime, bool isOpen, String clubName, String clubLogo, String universityName, int currentCount, String status, bool isEnrolled
});




}
/// @nodoc
class __$EventDetailsModelCopyWithImpl<$Res>
    implements _$EventDetailsModelCopyWith<$Res> {
  __$EventDetailsModelCopyWithImpl(this._self, this._then);

  final _EventDetailsModel _self;
  final $Res Function(_EventDetailsModel) _then;

/// Create a copy of EventDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? title = null,Object? description = freezed,Object? mapUrl = freezed,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? startTime = null,Object? endTime = null,Object? isOpen = null,Object? clubName = null,Object? clubLogo = null,Object? universityName = null,Object? currentCount = null,Object? status = null,Object? isEnrolled = null,}) {
  return _then(_EventDetailsModel(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,clubName: null == clubName ? _self.clubName : clubName // ignore: cast_nullable_to_non_nullable
as String,clubLogo: null == clubLogo ? _self.clubLogo : clubLogo // ignore: cast_nullable_to_non_nullable
as String,universityName: null == universityName ? _self.universityName : universityName // ignore: cast_nullable_to_non_nullable
as String,currentCount: null == currentCount ? _self.currentCount : currentCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isEnrolled: null == isEnrolled ? _self.isEnrolled : isEnrolled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
