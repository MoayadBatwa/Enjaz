// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

@JsonSerializable(fieldRename: .snake) String get id; String get authId; String get name; String get email; String get createdAt; String get role; String get phoneNumber; UniversityModel get universities; MajorModel get majors; String get gender;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.authId, authId) || other.authId == authId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.universities, universities) || other.universities == universities)&&(identical(other.majors, majors) || other.majors == majors)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authId,name,email,createdAt,role,phoneNumber,universities,majors,gender);

@override
String toString() {
  return 'ProfileModel(id: $id, authId: $authId, name: $name, email: $email, createdAt: $createdAt, role: $role, phoneNumber: $phoneNumber, universities: $universities, majors: $majors, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
@JsonSerializable(fieldRename: .snake) String id, String authId, String name, String email, String createdAt, String role, String phoneNumber, UniversityModel universities, MajorModel majors, String gender
});


$UniversityModelCopyWith<$Res> get universities;$MajorModelCopyWith<$Res> get majors;

}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? authId = null,Object? name = null,Object? email = null,Object? createdAt = null,Object? role = null,Object? phoneNumber = null,Object? universities = null,Object? majors = null,Object? gender = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authId: null == authId ? _self.authId : authId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,universities: null == universities ? _self.universities : universities // ignore: cast_nullable_to_non_nullable
as UniversityModel,majors: null == majors ? _self.majors : majors // ignore: cast_nullable_to_non_nullable
as MajorModel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<$Res> get universities {
  
  return $UniversityModelCopyWith<$Res>(_self.universities, (value) {
    return _then(_self.copyWith(universities: value));
  });
}/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MajorModelCopyWith<$Res> get majors {
  
  return $MajorModelCopyWith<$Res>(_self.majors, (value) {
    return _then(_self.copyWith(majors: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonSerializable(fieldRename: .snake)  String id,  String authId,  String name,  String email,  String createdAt,  String role,  String phoneNumber,  UniversityModel universities,  MajorModel majors,  String gender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.authId,_that.name,_that.email,_that.createdAt,_that.role,_that.phoneNumber,_that.universities,_that.majors,_that.gender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonSerializable(fieldRename: .snake)  String id,  String authId,  String name,  String email,  String createdAt,  String role,  String phoneNumber,  UniversityModel universities,  MajorModel majors,  String gender)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.id,_that.authId,_that.name,_that.email,_that.createdAt,_that.role,_that.phoneNumber,_that.universities,_that.majors,_that.gender);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonSerializable(fieldRename: .snake)  String id,  String authId,  String name,  String email,  String createdAt,  String role,  String phoneNumber,  UniversityModel universities,  MajorModel majors,  String gender)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.authId,_that.name,_that.email,_that.createdAt,_that.role,_that.phoneNumber,_that.universities,_that.majors,_that.gender);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel implements ProfileModel {
  const _ProfileModel({@JsonSerializable(fieldRename: .snake) required this.id, required this.authId, required this.name, required this.email, required this.createdAt, required this.role, required this.phoneNumber, required this.universities, required this.majors, required this.gender});
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override@JsonSerializable(fieldRename: .snake) final  String id;
@override final  String authId;
@override final  String name;
@override final  String email;
@override final  String createdAt;
@override final  String role;
@override final  String phoneNumber;
@override final  UniversityModel universities;
@override final  MajorModel majors;
@override final  String gender;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.authId, authId) || other.authId == authId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.universities, universities) || other.universities == universities)&&(identical(other.majors, majors) || other.majors == majors)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authId,name,email,createdAt,role,phoneNumber,universities,majors,gender);

@override
String toString() {
  return 'ProfileModel(id: $id, authId: $authId, name: $name, email: $email, createdAt: $createdAt, role: $role, phoneNumber: $phoneNumber, universities: $universities, majors: $majors, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonSerializable(fieldRename: .snake) String id, String authId, String name, String email, String createdAt, String role, String phoneNumber, UniversityModel universities, MajorModel majors, String gender
});


@override $UniversityModelCopyWith<$Res> get universities;@override $MajorModelCopyWith<$Res> get majors;

}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? authId = null,Object? name = null,Object? email = null,Object? createdAt = null,Object? role = null,Object? phoneNumber = null,Object? universities = null,Object? majors = null,Object? gender = null,}) {
  return _then(_ProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authId: null == authId ? _self.authId : authId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,universities: null == universities ? _self.universities : universities // ignore: cast_nullable_to_non_nullable
as UniversityModel,majors: null == majors ? _self.majors : majors // ignore: cast_nullable_to_non_nullable
as MajorModel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<$Res> get universities {
  
  return $UniversityModelCopyWith<$Res>(_self.universities, (value) {
    return _then(_self.copyWith(universities: value));
  });
}/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MajorModelCopyWith<$Res> get majors {
  
  return $MajorModelCopyWith<$Res>(_self.majors, (value) {
    return _then(_self.copyWith(majors: value));
  });
}
}

// dart format on
