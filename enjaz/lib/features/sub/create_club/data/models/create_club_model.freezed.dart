// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_club_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateClubModel {

 int get id; String get firstName; String get lastName;
/// Create a copy of CreateClubModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClubModelCopyWith<CreateClubModel> get copyWith => _$CreateClubModelCopyWithImpl<CreateClubModel>(this as CreateClubModel, _$identity);

  /// Serializes this CreateClubModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClubModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'CreateClubModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $CreateClubModelCopyWith<$Res>  {
  factory $CreateClubModelCopyWith(CreateClubModel value, $Res Function(CreateClubModel) _then) = _$CreateClubModelCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class _$CreateClubModelCopyWithImpl<$Res>
    implements $CreateClubModelCopyWith<$Res> {
  _$CreateClubModelCopyWithImpl(this._self, this._then);

  final CreateClubModel _self;
  final $Res Function(CreateClubModel) _then;

/// Create a copy of CreateClubModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateClubModel].
extension CreateClubModelPatterns on CreateClubModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateClubModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateClubModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateClubModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateClubModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateClubModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateClubModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateClubModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _CreateClubModel():
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _CreateClubModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateClubModel implements CreateClubModel {
  const _CreateClubModel({required this.id, required this.firstName, required this.lastName});
  factory _CreateClubModel.fromJson(Map<String, dynamic> json) => _$CreateClubModelFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of CreateClubModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateClubModelCopyWith<_CreateClubModel> get copyWith => __$CreateClubModelCopyWithImpl<_CreateClubModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateClubModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateClubModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'CreateClubModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$CreateClubModelCopyWith<$Res> implements $CreateClubModelCopyWith<$Res> {
  factory _$CreateClubModelCopyWith(_CreateClubModel value, $Res Function(_CreateClubModel) _then) = __$CreateClubModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class __$CreateClubModelCopyWithImpl<$Res>
    implements _$CreateClubModelCopyWith<$Res> {
  __$CreateClubModelCopyWithImpl(this._self, this._then);

  final _CreateClubModel _self;
  final $Res Function(_CreateClubModel) _then;

/// Create a copy of CreateClubModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_CreateClubModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
