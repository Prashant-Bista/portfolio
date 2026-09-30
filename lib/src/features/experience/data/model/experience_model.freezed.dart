// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExperienceModel {

 String get company; String get role;@TimestampConverter() DateTime? get end; int get order; List<String> get tags;@TimestampConverter() DateTime? get start;
/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperienceModelCopyWith<ExperienceModel> get copyWith => _$ExperienceModelCopyWithImpl<ExperienceModel>(this as ExperienceModel, _$identity);

  /// Serializes this ExperienceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExperienceModel&&(identical(other.company, company) || other.company == company)&&(identical(other.role, role) || other.role == role)&&(identical(other.end, end) || other.end == end)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.start, start) || other.start == start));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,role,end,order,const DeepCollectionEquality().hash(tags),start);

@override
String toString() {
  return 'ExperienceModel(company: $company, role: $role, end: $end, order: $order, tags: $tags, start: $start)';
}


}

/// @nodoc
abstract mixin class $ExperienceModelCopyWith<$Res>  {
  factory $ExperienceModelCopyWith(ExperienceModel value, $Res Function(ExperienceModel) _then) = _$ExperienceModelCopyWithImpl;
@useResult
$Res call({
 String company, String role,@TimestampConverter() DateTime? end, int order, List<String> tags,@TimestampConverter() DateTime? start
});




}
/// @nodoc
class _$ExperienceModelCopyWithImpl<$Res>
    implements $ExperienceModelCopyWith<$Res> {
  _$ExperienceModelCopyWithImpl(this._self, this._then);

  final ExperienceModel _self;
  final $Res Function(ExperienceModel) _then;

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? role = null,Object? end = freezed,Object? order = null,Object? tags = null,Object? start = freezed,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExperienceModel].
extension ExperienceModelPatterns on ExperienceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExperienceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExperienceModel value)  $default,){
final _that = this;
switch (_that) {
case _ExperienceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExperienceModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String company,  String role, @TimestampConverter()  DateTime? end,  int order,  List<String> tags, @TimestampConverter()  DateTime? start)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
return $default(_that.company,_that.role,_that.end,_that.order,_that.tags,_that.start);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String company,  String role, @TimestampConverter()  DateTime? end,  int order,  List<String> tags, @TimestampConverter()  DateTime? start)  $default,) {final _that = this;
switch (_that) {
case _ExperienceModel():
return $default(_that.company,_that.role,_that.end,_that.order,_that.tags,_that.start);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String company,  String role, @TimestampConverter()  DateTime? end,  int order,  List<String> tags, @TimestampConverter()  DateTime? start)?  $default,) {final _that = this;
switch (_that) {
case _ExperienceModel() when $default != null:
return $default(_that.company,_that.role,_that.end,_that.order,_that.tags,_that.start);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExperienceModel implements ExperienceModel {
  const _ExperienceModel({required this.company, required this.role, @TimestampConverter() this.end, required this.order, required final  List<String> tags, @TimestampConverter() this.start}): _tags = tags;
  factory _ExperienceModel.fromJson(Map<String, dynamic> json) => _$ExperienceModelFromJson(json);

@override final  String company;
@override final  String role;
@override@TimestampConverter() final  DateTime? end;
@override final  int order;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@TimestampConverter() final  DateTime? start;

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperienceModelCopyWith<_ExperienceModel> get copyWith => __$ExperienceModelCopyWithImpl<_ExperienceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperienceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExperienceModel&&(identical(other.company, company) || other.company == company)&&(identical(other.role, role) || other.role == role)&&(identical(other.end, end) || other.end == end)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.start, start) || other.start == start));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,role,end,order,const DeepCollectionEquality().hash(_tags),start);

@override
String toString() {
  return 'ExperienceModel(company: $company, role: $role, end: $end, order: $order, tags: $tags, start: $start)';
}


}

/// @nodoc
abstract mixin class _$ExperienceModelCopyWith<$Res> implements $ExperienceModelCopyWith<$Res> {
  factory _$ExperienceModelCopyWith(_ExperienceModel value, $Res Function(_ExperienceModel) _then) = __$ExperienceModelCopyWithImpl;
@override @useResult
$Res call({
 String company, String role,@TimestampConverter() DateTime? end, int order, List<String> tags,@TimestampConverter() DateTime? start
});




}
/// @nodoc
class __$ExperienceModelCopyWithImpl<$Res>
    implements _$ExperienceModelCopyWith<$Res> {
  __$ExperienceModelCopyWithImpl(this._self, this._then);

  final _ExperienceModel _self;
  final $Res Function(_ExperienceModel) _then;

/// Create a copy of ExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? role = null,Object? end = freezed,Object? order = null,Object? tags = null,Object? start = freezed,}) {
  return _then(_ExperienceModel(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
