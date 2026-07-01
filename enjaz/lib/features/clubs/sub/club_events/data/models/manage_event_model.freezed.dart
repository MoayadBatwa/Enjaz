// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ManageEventModel {

@JsonKey(includeIfNull: false) String? get id; String get title; String get description; DateTime get dateAt; String get place; int get capacity; String get planId; String? get mapUrl; String get startTime; String get endTime;@JsonKey(includeIfNull: false) bool? get isOpen;@JsonKey(includeIfNull: false) String? get status;
/// Create a copy of ManageEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManageEventModelCopyWith<ManageEventModel> get copyWith => _$ManageEventModelCopyWithImpl<ManageEventModel>(this as ManageEventModel, _$identity);

  /// Serializes this ManageEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManageEventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dateAt,place,capacity,planId,mapUrl,startTime,endTime,isOpen,status);

@override
String toString() {
  return 'ManageEventModel(id: $id, title: $title, description: $description, dateAt: $dateAt, place: $place, capacity: $capacity, planId: $planId, mapUrl: $mapUrl, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, status: $status)';
}


}

/// @nodoc
abstract mixin class $ManageEventModelCopyWith<$Res>  {
  factory $ManageEventModelCopyWith(ManageEventModel value, $Res Function(ManageEventModel) _then) = _$ManageEventModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? id, String title, String description, DateTime dateAt, String place, int capacity, String planId, String? mapUrl, String startTime, String endTime,@JsonKey(includeIfNull: false) bool? isOpen,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class _$ManageEventModelCopyWithImpl<$Res>
    implements $ManageEventModelCopyWith<$Res> {
  _$ManageEventModelCopyWithImpl(this._self, this._then);

  final ManageEventModel _self;
  final $Res Function(ManageEventModel) _then;

/// Create a copy of ManageEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? description = null,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? planId = null,Object? mapUrl = freezed,Object? startTime = null,Object? endTime = null,Object? isOpen = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: freezed == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ManageEventModel].
extension ManageEventModelPatterns on ManageEventModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManageEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManageEventModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManageEventModel value)  $default,){
final _that = this;
switch (_that) {
case _ManageEventModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManageEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _ManageEventModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  String planId,  String? mapUrl,  String startTime,  String endTime, @JsonKey(includeIfNull: false)  bool? isOpen, @JsonKey(includeIfNull: false)  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManageEventModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.planId,_that.mapUrl,_that.startTime,_that.endTime,_that.isOpen,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  String planId,  String? mapUrl,  String startTime,  String endTime, @JsonKey(includeIfNull: false)  bool? isOpen, @JsonKey(includeIfNull: false)  String? status)  $default,) {final _that = this;
switch (_that) {
case _ManageEventModel():
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.planId,_that.mapUrl,_that.startTime,_that.endTime,_that.isOpen,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? id,  String title,  String description,  DateTime dateAt,  String place,  int capacity,  String planId,  String? mapUrl,  String startTime,  String endTime, @JsonKey(includeIfNull: false)  bool? isOpen, @JsonKey(includeIfNull: false)  String? status)?  $default,) {final _that = this;
switch (_that) {
case _ManageEventModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dateAt,_that.place,_that.capacity,_that.planId,_that.mapUrl,_that.startTime,_that.endTime,_that.isOpen,_that.status);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _ManageEventModel implements ManageEventModel {
  const _ManageEventModel({@JsonKey(includeIfNull: false) this.id, required this.title, required this.description, required this.dateAt, required this.place, required this.capacity, required this.planId, this.mapUrl, required this.startTime, required this.endTime, @JsonKey(includeIfNull: false) this.isOpen, @JsonKey(includeIfNull: false) this.status});
  factory _ManageEventModel.fromJson(Map<String, dynamic> json) => _$ManageEventModelFromJson(json);

@override@JsonKey(includeIfNull: false) final  String? id;
@override final  String title;
@override final  String description;
@override final  DateTime dateAt;
@override final  String place;
@override final  int capacity;
@override final  String planId;
@override final  String? mapUrl;
@override final  String startTime;
@override final  String endTime;
@override@JsonKey(includeIfNull: false) final  bool? isOpen;
@override@JsonKey(includeIfNull: false) final  String? status;

/// Create a copy of ManageEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManageEventModelCopyWith<_ManageEventModel> get copyWith => __$ManageEventModelCopyWithImpl<_ManageEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManageEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManageEventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateAt, dateAt) || other.dateAt == dateAt)&&(identical(other.place, place) || other.place == place)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dateAt,place,capacity,planId,mapUrl,startTime,endTime,isOpen,status);

@override
String toString() {
  return 'ManageEventModel(id: $id, title: $title, description: $description, dateAt: $dateAt, place: $place, capacity: $capacity, planId: $planId, mapUrl: $mapUrl, startTime: $startTime, endTime: $endTime, isOpen: $isOpen, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ManageEventModelCopyWith<$Res> implements $ManageEventModelCopyWith<$Res> {
  factory _$ManageEventModelCopyWith(_ManageEventModel value, $Res Function(_ManageEventModel) _then) = __$ManageEventModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? id, String title, String description, DateTime dateAt, String place, int capacity, String planId, String? mapUrl, String startTime, String endTime,@JsonKey(includeIfNull: false) bool? isOpen,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class __$ManageEventModelCopyWithImpl<$Res>
    implements _$ManageEventModelCopyWith<$Res> {
  __$ManageEventModelCopyWithImpl(this._self, this._then);

  final _ManageEventModel _self;
  final $Res Function(_ManageEventModel) _then;

/// Create a copy of ManageEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? description = null,Object? dateAt = null,Object? place = null,Object? capacity = null,Object? planId = null,Object? mapUrl = freezed,Object? startTime = null,Object? endTime = null,Object? isOpen = freezed,Object? status = freezed,}) {
  return _then(_ManageEventModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dateAt: null == dateAt ? _self.dateAt : dateAt // ignore: cast_nullable_to_non_nullable
as DateTime,place: null == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,isOpen: freezed == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
