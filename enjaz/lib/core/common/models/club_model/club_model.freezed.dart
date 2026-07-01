// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClubModel {

 String get id;@JsonKey(name: "universities") UniversityModel get university; String get name; String get description; String get logoUrl; String get createdAt;
/// Create a copy of ClubModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubModelCopyWith<ClubModel> get copyWith => _$ClubModelCopyWithImpl<ClubModel>(this as ClubModel, _$identity);

  /// Serializes this ClubModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubModel&&(identical(other.id, id) || other.id == id)&&(identical(other.university, university) || other.university == university)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,university,name,description,logoUrl,createdAt);

@override
String toString() {
  return 'ClubModel(id: $id, university: $university, name: $name, description: $description, logoUrl: $logoUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ClubModelCopyWith<$Res>  {
  factory $ClubModelCopyWith(ClubModel value, $Res Function(ClubModel) _then) = _$ClubModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: "universities") UniversityModel university, String name, String description, String logoUrl, String createdAt
});


$UniversityModelCopyWith<$Res> get university;

}
/// @nodoc
class _$ClubModelCopyWithImpl<$Res>
    implements $ClubModelCopyWith<$Res> {
  _$ClubModelCopyWithImpl(this._self, this._then);

  final ClubModel _self;
  final $Res Function(ClubModel) _then;

/// Create a copy of ClubModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? university = null,Object? name = null,Object? description = null,Object? logoUrl = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as UniversityModel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ClubModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<$Res> get university {
  
  return $UniversityModelCopyWith<$Res>(_self.university, (value) {
    return _then(_self.copyWith(university: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClubModel].
extension ClubModelPatterns on ClubModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClubModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClubModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClubModel value)  $default,){
final _that = this;
switch (_that) {
case _ClubModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClubModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClubModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: "universities")  UniversityModel university,  String name,  String description,  String logoUrl,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClubModel() when $default != null:
return $default(_that.id,_that.university,_that.name,_that.description,_that.logoUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: "universities")  UniversityModel university,  String name,  String description,  String logoUrl,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ClubModel():
return $default(_that.id,_that.university,_that.name,_that.description,_that.logoUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: "universities")  UniversityModel university,  String name,  String description,  String logoUrl,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ClubModel() when $default != null:
return $default(_that.id,_that.university,_that.name,_that.description,_that.logoUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _ClubModel implements ClubModel {
  const _ClubModel({required this.id, @JsonKey(name: "universities") required this.university, required this.name, required this.description, required this.logoUrl, required this.createdAt});
  factory _ClubModel.fromJson(Map<String, dynamic> json) => _$ClubModelFromJson(json);

@override final  String id;
@override@JsonKey(name: "universities") final  UniversityModel university;
@override final  String name;
@override final  String description;
@override final  String logoUrl;
@override final  String createdAt;

/// Create a copy of ClubModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClubModelCopyWith<_ClubModel> get copyWith => __$ClubModelCopyWithImpl<_ClubModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClubModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClubModel&&(identical(other.id, id) || other.id == id)&&(identical(other.university, university) || other.university == university)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,university,name,description,logoUrl,createdAt);

@override
String toString() {
  return 'ClubModel(id: $id, university: $university, name: $name, description: $description, logoUrl: $logoUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ClubModelCopyWith<$Res> implements $ClubModelCopyWith<$Res> {
  factory _$ClubModelCopyWith(_ClubModel value, $Res Function(_ClubModel) _then) = __$ClubModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: "universities") UniversityModel university, String name, String description, String logoUrl, String createdAt
});


@override $UniversityModelCopyWith<$Res> get university;

}
/// @nodoc
class __$ClubModelCopyWithImpl<$Res>
    implements _$ClubModelCopyWith<$Res> {
  __$ClubModelCopyWithImpl(this._self, this._then);

  final _ClubModel _self;
  final $Res Function(_ClubModel) _then;

/// Create a copy of ClubModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? university = null,Object? name = null,Object? description = null,Object? logoUrl = null,Object? createdAt = null,}) {
  return _then(_ClubModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as UniversityModel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ClubModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<$Res> get university {
  
  return $UniversityModelCopyWith<$Res>(_self.university, (value) {
    return _then(_self.copyWith(university: value));
  });
}
}

// dart format on
