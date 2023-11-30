import 'package:infinitie_list_app/src/models/responses/login_response.dart';
import 'package:injectable/injectable.dart';

import '../../models/payloads/login_payload.dart';
import '../repository/auth_repository.dart';

abstract class AuthUsecase {
  Future<LoginResponse> login({
    required String phone,
    required String password,
  });
}

@Injectable(as: AuthUsecase)
class AuthUsecaseImpl extends AuthUsecase {
  final AuthRepository _authRepository;

  AuthUsecaseImpl(this._authRepository);

  @override
  Future<LoginResponse> login({
    required String phone,
    required String password,
  }) async {
    final res = await _authRepository.login(LoginPayload(
      password: password,
      phone: phone,
    ));

    return res;
  }
}
