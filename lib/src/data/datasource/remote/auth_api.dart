import 'package:infinitie_list_app/src/core/networking/api_response.dart';
import 'package:infinitie_list_app/src/models/payloads/login_payload.dart';
import 'package:infinitie_list_app/src/models/responses/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

part 'auth_api.g.dart';

class AuthApiConstants {
  static const login = '/authentication/login';
}

@RestApi()
@injectable
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(AuthApiConstants.login)
  Future<ApiResponse<LoginResponse>> login(LoginPayload payload);
}
