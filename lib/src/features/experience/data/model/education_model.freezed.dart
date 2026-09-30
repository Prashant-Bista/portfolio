// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationModel {

 String get course; String get address; DateTime? get year; String get institute; String get percentage;
/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationModelCopyWith<EducationModel> get copyWith => _$EducationModelCopyWithImpl<EducationModel>(this as EducationModel, _$identity);

  /// Serializes this EducationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationModel&&(identical(other.course, course) || other.course == course)&&(identical(other.address, address) || other.address == address)&&(identical(other.year, year) || other.year == year)&&(identical(other.institute, institute) || other.institute == institute)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,address,year,institute,percentage);

@override
String toString() {
  return 'EducationModel(course: $course, address: $address, year: $year, institute: $institute, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class $EducationModelCopyWith<$Res>  {
  factory $EducationModelCopyWith(EducationModel value, $Res Function(EducationModel) _then) = _$EducationModelCopyWithImpl;
@useResult
$Res call({
 String course, String address, DateTime? year, String institute, String percentage
});




}
/// @nodoc
class _$EducationModelCopyWithImpl<$Res>
    implements $EducationModelCopyWith<$Res> {
  _$EducationModelCopyWithImpl(this._self, this._then);

  final EducationModel _self;
  final $Res Function(EducationModel) _then;

/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? course = null,Object? address = null,Object? year = freezed,Object? institute = null,Object? percentage = null,}) {
  return _then(_self.copyWith(
course: null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DateTime?,institute: null == institute ? _self.institute : institute // ignore: cast_nullable_to_non_nullable
as String,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EducationModel].
extension EducationModelPatterns on EducationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EducationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EducationModel value)  $default,){
final _that = this;
switch (_that) {
case _EducationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EducationModel value)?  $default,){
final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String course,  String address,  DateTime? year,  String institute,  String percentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
return $default(_that.course,_that.address,_that.year,_that.institute,_that.percentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String course,  String address,  DateTime? year,  String institute,  String percentage)  $default,) {final _that = this;
switch (_that) {
case _EducationModel():
return $default(_that.course,_that.address,_that.year,_that.institute,_that.percentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String course,  String address,  DateTime? year,  String institute,  String percentage)?  $default,) {final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
return $default(_that.course,_that.address,_that.year,_that.institute,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationModel implements EducationModel {
  const _EducationModel({required this.course, required this.address, required this.year, required this.institute, required this.percentage});
  factory _EducationModel.fromJson(Map<String, dynamic> json) => _$EducationModelFromJson(json);

@override final  String course;
@override final  String address;
@override final  DateTime? year;
@override final  String institute;
@override final  String percentage;

/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EducationModelCopyWith<_EducationModel> get copyWith => __$EducationModelCopyWithImpl<_EducationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EducationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationModel&&(identical(other.course, course) || other.course == course)&&(identical(other.address, address) || other.address == address)&&(identical(other.year, year) || other.year == year)&&(identical(other.institute, institute) || other.institute == institute)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,address,year,institute,percentage);

@override
String toString() {
  return 'EducationModel(course: $course, address: $address, year: $year, institute: $institute, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$EducationModelCopyWith<$Res> implements $EducationModelCopyWith<$Res> {
  factory _$EducationModelCopyWith(_EducationModel value, $Res Function(_EducationModel) _then) = __$EducationModelCopyWithImpl;
@override @useResult
$Res call({
 String course, String address, DateTime? year, String institute, String percentage
});




}
/// @nodoc
class __$EducationModelCopyWithImpl<$Res>
    implements _$EducationModelCopyWith<$Res> {
  __$EducationModelCopyWithImpl(this._self, this._then);

  final _EducationModel _self;
  final $Res Function(_EducationModel) _then;

/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? course = null,Object? address = null,Object? year = freezed,Object? institute = null,Object? percentage = null,}) {
  return _then(_EducationModel(
course: null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DateTime?,institute: null == institute ? _self.institute : institute // ignore: cast_nullable_to_non_nullable
as String,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
