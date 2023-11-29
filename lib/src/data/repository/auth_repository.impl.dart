import 'package:infinitie_list_app/src/data/datasource/remote/auth_api.dart';
import 'package:infinitie_list_app/src/domain/repository/auth_repository.dart';
import 'package:infinitie_list_app/src/models/payloads/login_payload.dart';
import 'package:infinitie_list_app/src/models/responses/login_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthApi _authApi;

  AuthRepositoryImpl(this._authApi);

  @override
  Future<LoginResponse> login(LoginPayload payload) async {
    final res = await _authApi.login(payload);
    return res.data;
  }
}
