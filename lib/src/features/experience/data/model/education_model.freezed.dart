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

 String? get course; String get address;@TimestampConverter() DateTime? get year; int get order; String get institute; String get level; String? get percentage;@JsonKey(name: "GPA") String? get gpa;
/// Create a copy of EducationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EducationModelCopyWith<EducationModel> get copyWith => _$EducationModelCopyWithImpl<EducationModel>(this as EducationModel, _$identity);

  /// Serializes this EducationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EducationModel&&(identical(other.course, course) || other.course == course)&&(identical(other.address, address) || other.address == address)&&(identical(other.year, year) || other.year == year)&&(identical(other.order, order) || other.order == order)&&(identical(other.institute, institute) || other.institute == institute)&&(identical(other.level, level) || other.level == level)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.gpa, gpa) || other.gpa == gpa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,address,year,order,institute,level,percentage,gpa);

@override
String toString() {
  return 'EducationModel(course: $course, address: $address, year: $year, order: $order, institute: $institute, level: $level, percentage: $percentage, gpa: $gpa)';
}


}

/// @nodoc
abstract mixin class $EducationModelCopyWith<$Res>  {
  factory $EducationModelCopyWith(EducationModel value, $Res Function(EducationModel) _then) = _$EducationModelCopyWithImpl;
@useResult
$Res call({
 String? course, String address,@TimestampConverter() DateTime? year, int order, String institute, String level, String? percentage,@JsonKey(name: "GPA") String? gpa
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
@pragma('vm:prefer-inline') @override $Res call({Object? course = freezed,Object? address = null,Object? year = freezed,Object? order = null,Object? institute = null,Object? level = null,Object? percentage = freezed,Object? gpa = freezed,}) {
  return _then(_self.copyWith(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DateTime?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,institute: null == institute ? _self.institute : institute // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,gpa: freezed == gpa ? _self.gpa : gpa // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? course,  String address, @TimestampConverter()  DateTime? year,  int order,  String institute,  String level,  String? percentage, @JsonKey(name: "GPA")  String? gpa)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
return $default(_that.course,_that.address,_that.year,_that.order,_that.institute,_that.level,_that.percentage,_that.gpa);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? course,  String address, @TimestampConverter()  DateTime? year,  int order,  String institute,  String level,  String? percentage, @JsonKey(name: "GPA")  String? gpa)  $default,) {final _that = this;
switch (_that) {
case _EducationModel():
return $default(_that.course,_that.address,_that.year,_that.order,_that.institute,_that.level,_that.percentage,_that.gpa);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? course,  String address, @TimestampConverter()  DateTime? year,  int order,  String institute,  String level,  String? percentage, @JsonKey(name: "GPA")  String? gpa)?  $default,) {final _that = this;
switch (_that) {
case _EducationModel() when $default != null:
return $default(_that.course,_that.address,_that.year,_that.order,_that.institute,_that.level,_that.percentage,_that.gpa);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EducationModel implements EducationModel {
  const _EducationModel({this.course, required this.address, @TimestampConverter() this.year, required this.order, required this.institute, required this.level, this.percentage, @JsonKey(name: "GPA") this.gpa});
  factory _EducationModel.fromJson(Map<String, dynamic> json) => _$EducationModelFromJson(json);

@override final  String? course;
@override final  String address;
@override@TimestampConverter() final  DateTime? year;
@override final  int order;
@override final  String institute;
@override final  String level;
@override final  String? percentage;
@override@JsonKey(name: "GPA") final  String? gpa;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EducationModel&&(identical(other.course, course) || other.course == course)&&(identical(other.address, address) || other.address == address)&&(identical(other.year, year) || other.year == year)&&(identical(other.order, order) || other.order == order)&&(identical(other.institute, institute) || other.institute == institute)&&(identical(other.level, level) || other.level == level)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.gpa, gpa) || other.gpa == gpa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,course,address,year,order,institute,level,percentage,gpa);

@override
String toString() {
  return 'EducationModel(course: $course, address: $address, year: $year, order: $order, institute: $institute, level: $level, percentage: $percentage, gpa: $gpa)';
}


}

/// @nodoc
abstract mixin class _$EducationModelCopyWith<$Res> implements $EducationModelCopyWith<$Res> {
  factory _$EducationModelCopyWith(_EducationModel value, $Res Function(_EducationModel) _then) = __$EducationModelCopyWithImpl;
@override @useResult
$Res call({
 String? course, String address,@TimestampConverter() DateTime? year, int order, String institute, String level, String? percentage,@JsonKey(name: "GPA") String? gpa
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
@override @pragma('vm:prefer-inline') $Res call({Object? course = freezed,Object? address = null,Object? year = freezed,Object? order = null,Object? institute = null,Object? level = null,Object? percentage = freezed,Object? gpa = freezed,}) {
  return _then(_EducationModel(
course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as DateTime?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,institute: null == institute ? _self.institute : institute // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,gpa: freezed == gpa ? _self.gpa : gpa // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
