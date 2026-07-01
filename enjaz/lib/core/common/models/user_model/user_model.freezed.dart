// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get id; String get authId; String get name; String get email; String get phoneNumber; String get gender; String get role; MajorModel get majors; UniversityModel get universities; String get createdAt; String get avatarType;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.authId, authId) || other.authId == authId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.majors, majors) || other.majors == majors)&&(identical(other.universities, universities) || other.universities == universities)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.avatarType, avatarType) || other.avatarType == avatarType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authId,name,email,phoneNumber,gender,role,majors,universities,createdAt,avatarType);

@override
String toString() {
  return 'UserModel(id: $id, authId: $authId, name: $name, email: $email, phoneNumber: $phoneNumber, gender: $gender, role: $role, majors: $majors, universities: $universities, createdAt: $createdAt, avatarType: $avatarType)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String authId, String name, String email, String phoneNumber, String gender, String role, MajorModel majors, UniversityModel universities, String createdAt, String avatarType
});


$MajorModelCopyWith<$Res> get majors;$UniversityModelCopyWith<$Res> get universities;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? authId = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? gender = null,Object? role = null,Object? majors = null,Object? universities = null,Object? createdAt = null,Object? avatarType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authId: null == authId ? _self.authId : authId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,majors: null == majors ? _self.majors : majors // ignore: cast_nullable_to_non_nullable
as MajorModel,universities: null == universities ? _self.universities : universities // ignore: cast_nullable_to_non_nullable
as UniversityModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,avatarType: null == avatarType ? _self.avatarType : avatarType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MajorModelCopyWith<$Res> get majors {
  
  return $MajorModelCopyWith<$Res>(_self.majors, (value) {
    return _then(_self.copyWith(majors: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<$Res> get universities {
  
  return $UniversityModelCopyWith<$Res>(_self.universities, (value) {
    return _then(_self.copyWith(universities: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String authId,  String name,  String email,  String phoneNumber,  String gender,  String role,  MajorModel majors,  UniversityModel universities,  String createdAt,  String avatarType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.authId,_that.name,_that.email,_that.phoneNumber,_that.gender,_that.role,_that.majors,_that.universities,_that.createdAt,_that.avatarType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String authId,  String name,  String email,  String phoneNumber,  String gender,  String role,  MajorModel majors,  UniversityModel universities,  String createdAt,  String avatarType)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.authId,_that.name,_that.email,_that.phoneNumber,_that.gender,_that.role,_that.majors,_that.universities,_that.createdAt,_that.avatarType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String authId,  String name,  String email,  String phoneNumber,  String gender,  String role,  MajorModel majors,  UniversityModel universities,  String createdAt,  String avatarType)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.authId,_that.name,_that.email,_that.phoneNumber,_that.gender,_that.role,_that.majors,_that.universities,_that.createdAt,_that.avatarType);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.authId, required this.name, required this.email, required this.phoneNumber, required this.gender, required this.role, required this.majors, required this.universities, required this.createdAt, required this.avatarType});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String authId;
@override final  String name;
@override final  String email;
@override final  String phoneNumber;
@override final  String gender;
@override final  String role;
@override final  MajorModel majors;
@override final  UniversityModel universities;
@override final  String createdAt;
@override final  String avatarType;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.authId, authId) || other.authId == authId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.majors, majors) || other.majors == majors)&&(identical(other.universities, universities) || other.universities == universities)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.avatarType, avatarType) || other.avatarType == avatarType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,authId,name,email,phoneNumber,gender,role,majors,universities,createdAt,avatarType);

@override
String toString() {
  return 'UserModel(id: $id, authId: $authId, name: $name, email: $email, phoneNumber: $phoneNumber, gender: $gender, role: $role, majors: $majors, universities: $universities, createdAt: $createdAt, avatarType: $avatarType)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String authId, String name, String email, String phoneNumber, String gender, String role, MajorModel majors, UniversityModel universities, String createdAt, String avatarType
});


@override $MajorModelCopyWith<$Res> get majors;@override $UniversityModelCopyWith<$Res> get universities;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? authId = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? gender = null,Object? role = null,Object? majors = null,Object? universities = null,Object? createdAt = null,Object? avatarType = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,authId: null == authId ? _self.authId : authId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,majors: null == majors ? _self.majors : majors // ignore: cast_nullable_to_non_nullable
as MajorModel,universities: null == universities ? _self.universities : universities // ignore: cast_nullable_to_non_nullable
as UniversityModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,avatarType: null == avatarType ? _self.avatarType : avatarType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MajorModelCopyWith<$Res> get majors {
  
  return $MajorModelCopyWith<$Res>(_self.majors, (value) {
    return _then(_self.copyWith(majors: value));
  });
}/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UniversityModelCopyWith<$Res> get universities {
  
  return $UniversityModelCopyWith<$Res>(_self.universities, (value) {
    return _then(_self.copyWith(universities: value));
  });
}
}

// dart format on
