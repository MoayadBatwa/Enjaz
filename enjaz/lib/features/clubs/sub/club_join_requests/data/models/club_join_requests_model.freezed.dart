// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_join_requests_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClubJoinRequestsModel {

 String get id; String get name; String get email; String get userId; String get clubId;
/// Create a copy of ClubJoinRequestsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubJoinRequestsModelCopyWith<ClubJoinRequestsModel> get copyWith => _$ClubJoinRequestsModelCopyWithImpl<ClubJoinRequestsModel>(this as ClubJoinRequestsModel, _$identity);

  /// Serializes this ClubJoinRequestsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubJoinRequestsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.clubId, clubId) || other.clubId == clubId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,userId,clubId);

@override
String toString() {
  return 'ClubJoinRequestsModel(id: $id, name: $name, email: $email, userId: $userId, clubId: $clubId)';
}


}

/// @nodoc
abstract mixin class $ClubJoinRequestsModelCopyWith<$Res>  {
  factory $ClubJoinRequestsModelCopyWith(ClubJoinRequestsModel value, $Res Function(ClubJoinRequestsModel) _then) = _$ClubJoinRequestsModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String userId, String clubId
});




}
/// @nodoc
class _$ClubJoinRequestsModelCopyWithImpl<$Res>
    implements $ClubJoinRequestsModelCopyWith<$Res> {
  _$ClubJoinRequestsModelCopyWithImpl(this._self, this._then);

  final ClubJoinRequestsModel _self;
  final $Res Function(ClubJoinRequestsModel) _then;

/// Create a copy of ClubJoinRequestsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? userId = null,Object? clubId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,clubId: null == clubId ? _self.clubId : clubId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClubJoinRequestsModel].
extension ClubJoinRequestsModelPatterns on ClubJoinRequestsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClubJoinRequestsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClubJoinRequestsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClubJoinRequestsModel value)  $default,){
final _that = this;
switch (_that) {
case _ClubJoinRequestsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClubJoinRequestsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClubJoinRequestsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String userId,  String clubId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClubJoinRequestsModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.userId,_that.clubId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String userId,  String clubId)  $default,) {final _that = this;
switch (_that) {
case _ClubJoinRequestsModel():
return $default(_that.id,_that.name,_that.email,_that.userId,_that.clubId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String userId,  String clubId)?  $default,) {final _that = this;
switch (_that) {
case _ClubJoinRequestsModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.userId,_that.clubId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClubJoinRequestsModel implements ClubJoinRequestsModel {
  const _ClubJoinRequestsModel({required this.id, required this.name, required this.email, required this.userId, required this.clubId});
  factory _ClubJoinRequestsModel.fromJson(Map<String, dynamic> json) => _$ClubJoinRequestsModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String userId;
@override final  String clubId;

/// Create a copy of ClubJoinRequestsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClubJoinRequestsModelCopyWith<_ClubJoinRequestsModel> get copyWith => __$ClubJoinRequestsModelCopyWithImpl<_ClubJoinRequestsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClubJoinRequestsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClubJoinRequestsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.clubId, clubId) || other.clubId == clubId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,userId,clubId);

@override
String toString() {
  return 'ClubJoinRequestsModel(id: $id, name: $name, email: $email, userId: $userId, clubId: $clubId)';
}


}

/// @nodoc
abstract mixin class _$ClubJoinRequestsModelCopyWith<$Res> implements $ClubJoinRequestsModelCopyWith<$Res> {
  factory _$ClubJoinRequestsModelCopyWith(_ClubJoinRequestsModel value, $Res Function(_ClubJoinRequestsModel) _then) = __$ClubJoinRequestsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String userId, String clubId
});




}
/// @nodoc
class __$ClubJoinRequestsModelCopyWithImpl<$Res>
    implements _$ClubJoinRequestsModelCopyWith<$Res> {
  __$ClubJoinRequestsModelCopyWithImpl(this._self, this._then);

  final _ClubJoinRequestsModel _self;
  final $Res Function(_ClubJoinRequestsModel) _then;

/// Create a copy of ClubJoinRequestsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? userId = null,Object? clubId = null,}) {
  return _then(_ClubJoinRequestsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,clubId: null == clubId ? _self.clubId : clubId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
