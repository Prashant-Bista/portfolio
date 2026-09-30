// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonalInfoModel {

 String get name; String get address; String get email; String get photo; String get phone; String get description;@JsonKey(name: "work_experience") String get workExperience;
/// Create a copy of PersonalInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalInfoModelCopyWith<PersonalInfoModel> get copyWith => _$PersonalInfoModelCopyWithImpl<PersonalInfoModel>(this as PersonalInfoModel, _$identity);

  /// Serializes this PersonalInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.email, email) || other.email == email)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.description, description) || other.description == description)&&(identical(other.workExperience, workExperience) || other.workExperience == workExperience));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,email,photo,phone,description,workExperience);

@override
String toString() {
  return 'PersonalInfoModel(name: $name, address: $address, email: $email, photo: $photo, phone: $phone, description: $description, workExperience: $workExperience)';
}


}

/// @nodoc
abstract mixin class $PersonalInfoModelCopyWith<$Res>  {
  factory $PersonalInfoModelCopyWith(PersonalInfoModel value, $Res Function(PersonalInfoModel) _then) = _$PersonalInfoModelCopyWithImpl;
@useResult
$Res call({
 String name, String address, String email, String photo, String phone, String description,@JsonKey(name: "work_experience") String workExperience
});




}
/// @nodoc
class _$PersonalInfoModelCopyWithImpl<$Res>
    implements $PersonalInfoModelCopyWith<$Res> {
  _$PersonalInfoModelCopyWithImpl(this._self, this._then);

  final PersonalInfoModel _self;
  final $Res Function(PersonalInfoModel) _then;

/// Create a copy of PersonalInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = null,Object? email = null,Object? photo = null,Object? phone = null,Object? description = null,Object? workExperience = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,workExperience: null == workExperience ? _self.workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalInfoModel].
extension PersonalInfoModelPatterns on PersonalInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonalInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String address,  String email,  String photo,  String phone,  String description, @JsonKey(name: "work_experience")  String workExperience)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalInfoModel() when $default != null:
return $default(_that.name,_that.address,_that.email,_that.photo,_that.phone,_that.description,_that.workExperience);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String address,  String email,  String photo,  String phone,  String description, @JsonKey(name: "work_experience")  String workExperience)  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoModel():
return $default(_that.name,_that.address,_that.email,_that.photo,_that.phone,_that.description,_that.workExperience);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String address,  String email,  String photo,  String phone,  String description, @JsonKey(name: "work_experience")  String workExperience)?  $default,) {final _that = this;
switch (_that) {
case _PersonalInfoModel() when $default != null:
return $default(_that.name,_that.address,_that.email,_that.photo,_that.phone,_that.description,_that.workExperience);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonalInfoModel implements PersonalInfoModel {
  const _PersonalInfoModel({required this.name, required this.address, required this.email, required this.photo, required this.phone, required this.description, @JsonKey(name: "work_experience") required this.workExperience});
  factory _PersonalInfoModel.fromJson(Map<String, dynamic> json) => _$PersonalInfoModelFromJson(json);

@override final  String name;
@override final  String address;
@override final  String email;
@override final  String photo;
@override final  String phone;
@override final  String description;
@override@JsonKey(name: "work_experience") final  String workExperience;

/// Create a copy of PersonalInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalInfoModelCopyWith<_PersonalInfoModel> get copyWith => __$PersonalInfoModelCopyWithImpl<_PersonalInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.email, email) || other.email == email)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.description, description) || other.description == description)&&(identical(other.workExperience, workExperience) || other.workExperience == workExperience));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,email,photo,phone,description,workExperience);

@override
String toString() {
  return 'PersonalInfoModel(name: $name, address: $address, email: $email, photo: $photo, phone: $phone, description: $description, workExperience: $workExperience)';
}


}

/// @nodoc
abstract mixin class _$PersonalInfoModelCopyWith<$Res> implements $PersonalInfoModelCopyWith<$Res> {
  factory _$PersonalInfoModelCopyWith(_PersonalInfoModel value, $Res Function(_PersonalInfoModel) _then) = __$PersonalInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String address, String email, String photo, String phone, String description,@JsonKey(name: "work_experience") String workExperience
});




}
/// @nodoc
class __$PersonalInfoModelCopyWithImpl<$Res>
    implements _$PersonalInfoModelCopyWith<$Res> {
  __$PersonalInfoModelCopyWithImpl(this._self, this._then);

  final _PersonalInfoModel _self;
  final $Res Function(_PersonalInfoModel) _then;

/// Create a copy of PersonalInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = null,Object? email = null,Object? photo = null,Object? phone = null,Object? description = null,Object? workExperience = null,}) {
  return _then(_PersonalInfoModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,workExperience: null == workExperience ? _self.workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
