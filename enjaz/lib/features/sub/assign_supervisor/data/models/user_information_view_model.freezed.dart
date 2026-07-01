// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_information_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInformationViewModel {

 String get id; String get name; String get role; String get email; String get gender; String get createdAt; String get majorName; String get phoneNumber; String get universityName;
/// Create a copy of UserInformationViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInformationViewModelCopyWith<UserInformationViewModel> get copyWith => _$UserInformationViewModelCopyWithImpl<UserInformationViewModel>(this as UserInformationViewModel, _$identity);

  /// Serializes this UserInformationViewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInformationViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.majorName, majorName) || other.majorName == majorName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.universityName, universityName) || other.universityName == universityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,role,email,gender,createdAt,majorName,phoneNumber,universityName);

@override
String toString() {
  return 'UserInformationViewModel(id: $id, name: $name, role: $role, email: $email, gender: $gender, createdAt: $createdAt, majorName: $majorName, phoneNumber: $phoneNumber, universityName: $universityName)';
}


}

/// @nodoc
abstract mixin class $UserInformationViewModelCopyWith<$Res>  {
  factory $UserInformationViewModelCopyWith(UserInformationViewModel value, $Res Function(UserInformationViewModel) _then) = _$UserInformationViewModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String role, String email, String gender, String createdAt, String majorName, String phoneNumber, String universityName
});




}
/// @nodoc
class _$UserInformationViewModelCopyWithImpl<$Res>
    implements $UserInformationViewModelCopyWith<$Res> {
  _$UserInformationViewModelCopyWithImpl(this._self, this._then);

  final UserInformationViewModel _self;
  final $Res Function(UserInformationViewModel) _then;

/// Create a copy of UserInformationViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? role = null,Object? email = null,Object? gender = null,Object? createdAt = null,Object? majorName = null,Object? phoneNumber = null,Object? universityName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,majorName: null == majorName ? _self.majorName : majorName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,universityName: null == universityName ? _self.universityName : universityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInformationViewModel].
extension UserInformationViewModelPatterns on UserInformationViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInformationViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInformationViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInformationViewModel value)  $default,){
final _that = this;
switch (_that) {
case _UserInformationViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInformationViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserInformationViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String role,  String email,  String gender,  String createdAt,  String majorName,  String phoneNumber,  String universityName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInformationViewModel() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.email,_that.gender,_that.createdAt,_that.majorName,_that.phoneNumber,_that.universityName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String role,  String email,  String gender,  String createdAt,  String majorName,  String phoneNumber,  String universityName)  $default,) {final _that = this;
switch (_that) {
case _UserInformationViewModel():
return $default(_that.id,_that.name,_that.role,_that.email,_that.gender,_that.createdAt,_that.majorName,_that.phoneNumber,_that.universityName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String role,  String email,  String gender,  String createdAt,  String majorName,  String phoneNumber,  String universityName)?  $default,) {final _that = this;
switch (_that) {
case _UserInformationViewModel() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.email,_that.gender,_that.createdAt,_that.majorName,_that.phoneNumber,_that.universityName);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _UserInformationViewModel implements UserInformationViewModel {
  const _UserInformationViewModel({required this.id, required this.name, required this.role, required this.email, required this.gender, required this.createdAt, required this.majorName, required this.phoneNumber, required this.universityName});
  factory _UserInformationViewModel.fromJson(Map<String, dynamic> json) => _$UserInformationViewModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String role;
@override final  String email;
@override final  String gender;
@override final  String createdAt;
@override final  String majorName;
@override final  String phoneNumber;
@override final  String universityName;

/// Create a copy of UserInformationViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInformationViewModelCopyWith<_UserInformationViewModel> get copyWith => __$UserInformationViewModelCopyWithImpl<_UserInformationViewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInformationViewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInformationViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.majorName, majorName) || other.majorName == majorName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.universityName, universityName) || other.universityName == universityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,role,email,gender,createdAt,majorName,phoneNumber,universityName);

@override
String toString() {
  return 'UserInformationViewModel(id: $id, name: $name, role: $role, email: $email, gender: $gender, createdAt: $createdAt, majorName: $majorName, phoneNumber: $phoneNumber, universityName: $universityName)';
}


}

/// @nodoc
abstract mixin class _$UserInformationViewModelCopyWith<$Res> implements $UserInformationViewModelCopyWith<$Res> {
  factory _$UserInformationViewModelCopyWith(_UserInformationViewModel value, $Res Function(_UserInformationViewModel) _then) = __$UserInformationViewModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String role, String email, String gender, String createdAt, String majorName, String phoneNumber, String universityName
});




}
/// @nodoc
class __$UserInformationViewModelCopyWithImpl<$Res>
    implements _$UserInformationViewModelCopyWith<$Res> {
  __$UserInformationViewModelCopyWithImpl(this._self, this._then);

  final _UserInformationViewModel _self;
  final $Res Function(_UserInformationViewModel) _then;

/// Create a copy of UserInformationViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? role = null,Object? email = null,Object? gender = null,Object? createdAt = null,Object? majorName = null,Object? phoneNumber = null,Object? universityName = null,}) {
  return _then(_UserInformationViewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,majorName: null == majorName ? _self.majorName : majorName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,universityName: null == universityName ? _self.universityName : universityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
