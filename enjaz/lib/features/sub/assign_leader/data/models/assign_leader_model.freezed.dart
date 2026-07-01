// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_leader_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssignLeaderModel {

 String get role; UserInformationViewModel get usersInformationView;
/// Create a copy of AssignLeaderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignLeaderModelCopyWith<AssignLeaderModel> get copyWith => _$AssignLeaderModelCopyWithImpl<AssignLeaderModel>(this as AssignLeaderModel, _$identity);

  /// Serializes this AssignLeaderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignLeaderModel&&(identical(other.role, role) || other.role == role)&&(identical(other.usersInformationView, usersInformationView) || other.usersInformationView == usersInformationView));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,usersInformationView);

@override
String toString() {
  return 'AssignLeaderModel(role: $role, usersInformationView: $usersInformationView)';
}


}

/// @nodoc
abstract mixin class $AssignLeaderModelCopyWith<$Res>  {
  factory $AssignLeaderModelCopyWith(AssignLeaderModel value, $Res Function(AssignLeaderModel) _then) = _$AssignLeaderModelCopyWithImpl;
@useResult
$Res call({
 String role, UserInformationViewModel usersInformationView
});


$UserInformationViewModelCopyWith<$Res> get usersInformationView;

}
/// @nodoc
class _$AssignLeaderModelCopyWithImpl<$Res>
    implements $AssignLeaderModelCopyWith<$Res> {
  _$AssignLeaderModelCopyWithImpl(this._self, this._then);

  final AssignLeaderModel _self;
  final $Res Function(AssignLeaderModel) _then;

/// Create a copy of AssignLeaderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? usersInformationView = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,usersInformationView: null == usersInformationView ? _self.usersInformationView : usersInformationView // ignore: cast_nullable_to_non_nullable
as UserInformationViewModel,
  ));
}
/// Create a copy of AssignLeaderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInformationViewModelCopyWith<$Res> get usersInformationView {
  
  return $UserInformationViewModelCopyWith<$Res>(_self.usersInformationView, (value) {
    return _then(_self.copyWith(usersInformationView: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssignLeaderModel].
extension AssignLeaderModelPatterns on AssignLeaderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignLeaderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignLeaderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignLeaderModel value)  $default,){
final _that = this;
switch (_that) {
case _AssignLeaderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignLeaderModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssignLeaderModel() when $default != null:
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
case _AssignLeaderModel() when $default != null:
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
case _AssignLeaderModel():
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
case _AssignLeaderModel() when $default != null:
return $default(_that.role,_that.usersInformationView);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _AssignLeaderModel implements AssignLeaderModel {
  const _AssignLeaderModel({required this.role, required this.usersInformationView});
  factory _AssignLeaderModel.fromJson(Map<String, dynamic> json) => _$AssignLeaderModelFromJson(json);

@override final  String role;
@override final  UserInformationViewModel usersInformationView;

/// Create a copy of AssignLeaderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignLeaderModelCopyWith<_AssignLeaderModel> get copyWith => __$AssignLeaderModelCopyWithImpl<_AssignLeaderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignLeaderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignLeaderModel&&(identical(other.role, role) || other.role == role)&&(identical(other.usersInformationView, usersInformationView) || other.usersInformationView == usersInformationView));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,usersInformationView);

@override
String toString() {
  return 'AssignLeaderModel(role: $role, usersInformationView: $usersInformationView)';
}


}

/// @nodoc
abstract mixin class _$AssignLeaderModelCopyWith<$Res> implements $AssignLeaderModelCopyWith<$Res> {
  factory _$AssignLeaderModelCopyWith(_AssignLeaderModel value, $Res Function(_AssignLeaderModel) _then) = __$AssignLeaderModelCopyWithImpl;
@override @useResult
$Res call({
 String role, UserInformationViewModel usersInformationView
});


@override $UserInformationViewModelCopyWith<$Res> get usersInformationView;

}
/// @nodoc
class __$AssignLeaderModelCopyWithImpl<$Res>
    implements _$AssignLeaderModelCopyWith<$Res> {
  __$AssignLeaderModelCopyWithImpl(this._self, this._then);

  final _AssignLeaderModel _self;
  final $Res Function(_AssignLeaderModel) _then;

/// Create a copy of AssignLeaderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? usersInformationView = null,}) {
  return _then(_AssignLeaderModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,usersInformationView: null == usersInformationView ? _self.usersInformationView : usersInformationView // ignore: cast_nullable_to_non_nullable
as UserInformationViewModel,
  ));
}

/// Create a copy of AssignLeaderModel
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
