import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.g.dart';
part 'contact_model.freezed.dart';

@freezed
abstract class ContactModel with _$ContactModel {
  const factory ContactModel({
    required String name,
    required String email,
    required String message,
    required String subject,
    String? contact,
  }) = _ContactModel;
  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}
