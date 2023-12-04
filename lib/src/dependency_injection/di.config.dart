// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/service/login_api.dart' as _i4;
import '../data/datasource/remote/auth_api.dart' as _i5;
import '../domain/repository/auth_repository.dart' as _i6;
import '../domain/usecases/auth_usecase.dart' as _i7;
import '../presentation/shared/app_setting/bloc/app_setting_bloc.dart' as _i8;
import 'modules/bloc.module.dart' as _i10;
import 'modules/datasource.module.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final datasourceModule = _$DatasourceModule();
    final blocModule = _$BlocModule();
    gh.singleton<_i3.Dio>(datasourceModule.dioProd());
    gh.factory<_i4.ApiClient>(() => _i4.ApiClient(gh<_i3.Dio>()));
    gh.factory<_i5.AuthApi>(() => _i5.AuthApi(gh<_i3.Dio>()));
    gh.factory<_i6.AuthRepository>(
        () => _i6.AuthRepositoryImpl(gh<_i5.AuthApi>()));
    gh.factory<_i7.AuthUsecase>(
        () => _i7.AuthUsecaseImpl(gh<_i6.AuthRepository>()));
    gh.factory<_i8.AppSettingBloc>(
        () => blocModule.createMethod(gh<_i7.AuthUsecase>()));
    return this;
  }
}

class _$DatasourceModule extends _i9.DatasourceModule {}

class _$BlocModule extends _i10.BlocModule {}
