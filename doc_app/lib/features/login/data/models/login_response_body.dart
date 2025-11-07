import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_response_body.g.dart';

LoginResponseBody loginResponseBodyFromJson(String str) => LoginResponseBody.fromJson(json.decode(str));

String loginResponseBodyToJson(LoginResponseBody data) => json.encode(data.toJson());

@JsonSerializable()
class LoginResponseBody {
    @JsonKey(name: "message")
    final String? message;
    @JsonKey(name: "data")
    final Data? data;
    @JsonKey(name: "status")
    final bool? status;
    @JsonKey(name: "code")
    final int? code;

    LoginResponseBody({
        this.message,
        this.data,
        this.status,
        this.code,
    });

    factory LoginResponseBody.fromJson(Map<String, dynamic> json) => _$LoginResponseBodyFromJson(json);

    Map<String, dynamic> toJson() => _$LoginResponseBodyToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "token")
    final String? token;
    @JsonKey(name: "username")
    final String? username;

    Data({
        this.token,
        this.username,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}