import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DatasourceModule {
  @singleton
  Dio dioProd() => Dio(
        BaseOptions(
          baseUrl:
              'http://ec2-15-164-200-8.ap-northeast-2.compute.amazonaws.com:3000/api/v1',
          headers: {
            'accept': '*/*',
          },
        ),
      );
}
