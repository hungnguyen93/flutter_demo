import 'package:infinitie_list_app/src/domain/repository/auth_repository.dart';
import 'package:infinitie_list_app/src/domain/usecases/auth_usecase.dart';
import 'package:infinitie_list_app/src/models/payloads/login_payload.dart';
import 'package:infinitie_list_app/src/models/responses/login_response.dart';

class AuthUsecaseImpl extends AuthUsecase {
  final AuthRepository _authRepository;

  AuthUsecaseImpl(this._authRepository);

  @override
  Future<LoginResponse> login(
      {required String phone, required String password}) async {
    final res = await _authRepository
        .login(LoginPayload(password: password, phone: phone));
    return res;
  }
}
