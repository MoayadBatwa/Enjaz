// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniversityModel {

 String get id; String get name; String get description; String get location; String get branch; String get gender; String get createdAt;
/// Create a copy of UniversityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<UniversityModel> get copyWith => _$UniversityModelCopyWithImpl<UniversityModel>(this as UniversityModel, _$identity);

  /// Serializes this UniversityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UniversityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,location,branch,gender,createdAt);

@override
String toString() {
  return 'UniversityModel(id: $id, name: $name, description: $description, location: $location, branch: $branch, gender: $gender, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UniversityModelCopyWith<$Res>  {
  factory $UniversityModelCopyWith(UniversityModel value, $Res Function(UniversityModel) _then) = _$UniversityModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String location, String branch, String gender, String createdAt
});




}
/// @nodoc
class _$UniversityModelCopyWithImpl<$Res>
    implements $UniversityModelCopyWith<$Res> {
  _$UniversityModelCopyWithImpl(this._self, this._then);

  final UniversityModel _self;
  final $Res Function(UniversityModel) _then;

/// Create a copy of UniversityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? location = null,Object? branch = null,Object? gender = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UniversityModel].
extension UniversityModelPatterns on UniversityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UniversityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UniversityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UniversityModel value)  $default,){
final _that = this;
switch (_that) {
case _UniversityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UniversityModel value)?  $default,){
final _that = this;
switch (_that) {
case _UniversityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String location,  String branch,  String gender,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UniversityModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.location,_that.branch,_that.gender,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String location,  String branch,  String gender,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _UniversityModel():
return $default(_that.id,_that.name,_that.description,_that.location,_that.branch,_that.gender,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String location,  String branch,  String gender,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UniversityModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.location,_that.branch,_that.gender,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _UniversityModel implements UniversityModel {
  const _UniversityModel({required this.id, required this.name, required this.description, required this.location, required this.branch, required this.gender, required this.createdAt});
  factory _UniversityModel.fromJson(Map<String, dynamic> json) => _$UniversityModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String location;
@override final  String branch;
@override final  String gender;
@override final  String createdAt;

/// Create a copy of UniversityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UniversityModelCopyWith<_UniversityModel> get copyWith => __$UniversityModelCopyWithImpl<_UniversityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UniversityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UniversityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.location, location) || other.location == location)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,location,branch,gender,createdAt);

@override
String toString() {
  return 'UniversityModel(id: $id, name: $name, description: $description, location: $location, branch: $branch, gender: $gender, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UniversityModelCopyWith<$Res> implements $UniversityModelCopyWith<$Res> {
  factory _$UniversityModelCopyWith(_UniversityModel value, $Res Function(_UniversityModel) _then) = __$UniversityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String location, String branch, String gender, String createdAt
});




}
/// @nodoc
class __$UniversityModelCopyWithImpl<$Res>
    implements _$UniversityModelCopyWith<$Res> {
  __$UniversityModelCopyWithImpl(this._self, this._then);

  final _UniversityModel _self;
  final $Res Function(_UniversityModel) _then;

/// Create a copy of UniversityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? location = null,Object? branch = null,Object? gender = null,Object? createdAt = null,}) {
  return _then(_UniversityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
