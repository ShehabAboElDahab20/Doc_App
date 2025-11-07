import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final int? code;
  final String? message;
  final String? error;
  @JsonKey(name: 'ar_message')
  final String? arMessage;

  ApiErrorModel({
    required this.message,
    this.code,
    this.error,
    this.arMessage,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
