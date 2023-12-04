import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/auth_usecase.dart';
import '../../presentation/shared/app_setting/bloc/app_setting_bloc.dart';

@module
abstract class BlocModule {
  @factory
  AppSettingBloc createMethod(AuthUsecase authUsecase) =>
      AppSettingBloc(authUsecase);
}
