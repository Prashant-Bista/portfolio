import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';
@freezed
abstract class Failure with _$Failure{
  const factory Failure.network([@Default("Network Error Occurred")String message]) =  NetWorkFailure;
    const factory Failure.server([@Default("Server Error Occurred")String message]) =  ServerFailure;
  const factory Failure.unauthorized([@Default("Attempted Unauthorized Access")String message]) =  UnauthorizedFailure;
  const factory Failure.unavailable([@Default("Data Unavailable")String message]) =  UnavailableFailure;

}