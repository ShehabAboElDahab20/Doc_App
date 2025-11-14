import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final bool? status;
  @JsonKey(name: "code")
  final int? code;

  SignupResponse({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "name")
  final List<String>? name;
  @JsonKey(name: "email")
  final List<String>? email;
  @JsonKey(name: "phone")
  final List<String>? phone;
  @JsonKey(name: "gender")
  final List<String>? gender;
  @JsonKey(name: "password")
  final List<String>? password;

  Data({
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.password,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
