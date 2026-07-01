// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_supervisor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssignSupervisorModel {

 String get role; UserInformationViewModel get usersInformationView;
/// Create a copy of AssignSupervisorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignSupervisorModelCopyWith<AssignSupervisorModel> get copyWith => _$AssignSupervisorModelCopyWithImpl<AssignSupervisorModel>(this as AssignSupervisorModel, _$identity);

  /// Serializes this AssignSupervisorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignSupervisorModel&&(identical(other.role, role) || other.role == role)&&(identical(other.usersInformationView, usersInformationView) || other.usersInformationView == usersInformationView));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,usersInformationView);

@override
String toString() {
  return 'AssignSupervisorModel(role: $role, usersInformationView: $usersInformationView)';
}


}

/// @nodoc
abstract mixin class $AssignSupervisorModelCopyWith<$Res>  {
  factory $AssignSupervisorModelCopyWith(AssignSupervisorModel value, $Res Function(AssignSupervisorModel) _then) = _$AssignSupervisorModelCopyWithImpl;
@useResult
$Res call({
 String role, UserInformationViewModel usersInformationView
});


$UserInformationViewModelCopyWith<$Res> get usersInformationView;

}
/// @nodoc
class _$AssignSupervisorModelCopyWithImpl<$Res>
    implements $AssignSupervisorModelCopyWith<$Res> {
  _$AssignSupervisorModelCopyWithImpl(this._self, this._then);

  final AssignSupervisorModel _self;
  final $Res Function(AssignSupervisorModel) _then;

/// Create a copy of AssignSupervisorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? usersInformationView = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,usersInformationView: null == usersInformationView ? _self.usersInformationView : usersInformationView // ignore: cast_nullable_to_non_nullable
as UserInformationViewModel,
  ));
}
/// Create a copy of AssignSupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInformationViewModelCopyWith<$Res> get usersInformationView {
  
  return $UserInformationViewModelCopyWith<$Res>(_self.usersInformationView, (value) {
    return _then(_self.copyWith(usersInformationView: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssignSupervisorModel].
extension AssignSupervisorModelPatterns on AssignSupervisorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignSupervisorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignSupervisorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignSupervisorModel value)  $default,){
final _that = this;
switch (_that) {
case _AssignSupervisorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignSupervisorModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssignSupervisorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  UserInformationViewModel usersInformationView)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignSupervisorModel() when $default != null:
return $default(_that.role,_that.usersInformationView);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  UserInformationViewModel usersInformationView)  $default,) {final _that = this;
switch (_that) {
case _AssignSupervisorModel():
return $default(_that.role,_that.usersInformationView);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  UserInformationViewModel usersInformationView)?  $default,) {final _that = this;
switch (_that) {
case _AssignSupervisorModel() when $default != null:
return $default(_that.role,_that.usersInformationView);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _AssignSupervisorModel implements AssignSupervisorModel {
  const _AssignSupervisorModel({required this.role, required this.usersInformationView});
  factory _AssignSupervisorModel.fromJson(Map<String, dynamic> json) => _$AssignSupervisorModelFromJson(json);

@override final  String role;
@override final  UserInformationViewModel usersInformationView;

/// Create a copy of AssignSupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignSupervisorModelCopyWith<_AssignSupervisorModel> get copyWith => __$AssignSupervisorModelCopyWithImpl<_AssignSupervisorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignSupervisorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignSupervisorModel&&(identical(other.role, role) || other.role == role)&&(identical(other.usersInformationView, usersInformationView) || other.usersInformationView == usersInformationView));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,usersInformationView);

@override
String toString() {
  return 'AssignSupervisorModel(role: $role, usersInformationView: $usersInformationView)';
}


}

/// @nodoc
abstract mixin class _$AssignSupervisorModelCopyWith<$Res> implements $AssignSupervisorModelCopyWith<$Res> {
  factory _$AssignSupervisorModelCopyWith(_AssignSupervisorModel value, $Res Function(_AssignSupervisorModel) _then) = __$AssignSupervisorModelCopyWithImpl;
@override @useResult
$Res call({
 String role, UserInformationViewModel usersInformationView
});


@override $UserInformationViewModelCopyWith<$Res> get usersInformationView;

}
/// @nodoc
class __$AssignSupervisorModelCopyWithImpl<$Res>
    implements _$AssignSupervisorModelCopyWith<$Res> {
  __$AssignSupervisorModelCopyWithImpl(this._self, this._then);

  final _AssignSupervisorModel _self;
  final $Res Function(_AssignSupervisorModel) _then;

/// Create a copy of AssignSupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? usersInformationView = null,}) {
  return _then(_AssignSupervisorModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,usersInformationView: null == usersInformationView ? _self.usersInformationView : usersInformationView // ignore: cast_nullable_to_non_nullable
as UserInformationViewModel,
  ));
}

/// Create a copy of AssignSupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInformationViewModelCopyWith<$Res> get usersInformationView {
  
  return $UserInformationViewModelCopyWith<$Res>(_self.usersInformationView, (value) {
    return _then(_self.copyWith(usersInformationView: value));
  });
}
}

// dart format on
