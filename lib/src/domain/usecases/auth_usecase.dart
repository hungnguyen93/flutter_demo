import 'package:infinitie_list_app/src/models/payloads/login_payload.dart';
import 'package:infinitie_list_app/src/models/responses/login_response.dart';

abstract class AuthUsecase {
  Future<LoginResponse> login(
      {required String phone, required String password});
}
