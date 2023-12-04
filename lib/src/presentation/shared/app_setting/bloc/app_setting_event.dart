part of 'app_setting_bloc.dart';

@immutable
abstract class AppSettingEvent {}

class LoginEvent extends AppSettingEvent {
  final String username;
  final String passwork;

  LoginEvent(this.username, this.passwork);
}
