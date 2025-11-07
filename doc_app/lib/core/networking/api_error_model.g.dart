// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      error: json['error'] as String?,
      arMessage: json['ar_message'] as String?,
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'error': instance.error,
      'ar_message': instance.arMessage,
    };
