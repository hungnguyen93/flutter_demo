import 'package:dio/dio.dart';
import 'package:infinitie_list_app/src/core/networking/api_response.dart';
import 'package:infinitie_list_app/src/models/responses/login_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'login_api.g.dart';

@RestApi()
@injectable
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) = _ApiClient;

  @POST('/authentication/login')
  Future<ApiResponse<LoginResponse>> getLogin(
      @Body() String phone, String password);
}
