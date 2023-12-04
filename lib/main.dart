import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitie_list_app/src/presentation/auth/login/login_screen.dart';
import 'package:infinitie_list_app/src/presentation/shared/app_setting/bloc/app_setting_bloc.dart';
import 'package:injectable/injectable.dart';

import 'src/dependency_injection/di.dart';
import 'src/presentation/application.dart';

@singleton
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(const Application());
}
