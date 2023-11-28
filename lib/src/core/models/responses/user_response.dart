import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final String? id;
  final String? username;
  final String? email;
  final String? phone;
  final String? birthday;
  final String? nickname;
  final String? name;

  UserResponse({
    this.nickname,
    this.name,
    this.id,
    this.username,
    this.email,
    this.phone,
    this.birthday,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
