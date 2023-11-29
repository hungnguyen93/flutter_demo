import 'package:json_annotation/json_annotation.dart';

part 'login_payload.g.dart';

@JsonSerializable()
class LoginPayload {
  final String phone;
  final String password;
  LoginPayload({required this.password, required this.phone});

  factory LoginPayload.fromJson(Map<String, dynamic> json) =>
      _$LoginPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$LoginPayloadToJson(this);
}
