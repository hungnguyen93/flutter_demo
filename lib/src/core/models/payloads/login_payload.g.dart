// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginPayload _$LoginPayloadFromJson(Map<String, dynamic> json) => LoginPayload(
      password: json['password'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$LoginPayloadToJson(LoginPayload instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
    };
