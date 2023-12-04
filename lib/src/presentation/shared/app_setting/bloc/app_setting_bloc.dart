import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitie_list_app/src/domain/usecases/auth_usecase.dart';

part 'app_setting_event.dart';
part 'app_setting_state.dart';

class AppSettingBloc extends Bloc<AppSettingEvent, AppSettingState> {
  final AuthUsecase _authUsecase;

  AppSettingBloc(this._authUsecase) : super(AppStateInitial()) {
    on<LoginEvent>(_onSubmitLogin);
  }

  FutureOr<void> _onSubmitLogin(
      LoginEvent event, Emitter<AppSettingState> emit) async {
    final result = await _authUsecase.login(
        phone: event.username, password: event.passwork);
    print('--result ${result}');
  }
}
