import 'package:infinitie_list_app/src/core/models/responses/token_response.dart';
import 'package:infinitie_list_app/src/core/models/responses/user_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final TokenResponse? token;
  final UserResponse? user;
  LoginResponse({this.token, this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
