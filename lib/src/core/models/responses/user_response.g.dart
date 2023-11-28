// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      nickname: json['nickname'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'nickname': instance.nickname,
      'name': instance.name,
    };
