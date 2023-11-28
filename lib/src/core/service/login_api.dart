import 'package:dio/dio.dart';
import 'package:infinitie_list_app/src/core/models/responses/login_response.dart';
import 'package:infinitie_list_app/src/core/networking/api_response.dart';
import 'package:retrofit/http.dart';
part 'login_api.g.dart';

@RestApi(baseUrl: "http://ec2-15-164-200-8.ap-northeast-2.compute.amazonaws.com:3000/api/v1")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @POST('/authentication/login')
  Future<ApiResponse<LoginResponse>> getLogin(
      String phone,
      String password);
}
