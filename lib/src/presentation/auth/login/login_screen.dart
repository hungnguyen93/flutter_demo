import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitie_list_app/src/presentation/shared/app_setting/bloc/app_setting_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _onLogin() {
    context.read<AppSettingBloc>().add(LoginEvent('08408408408', '11111111'));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppSettingBloc, AppSettingState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: GestureDetector(
                onTap: _onLogin,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.amber),
                  padding: const EdgeInsets.all(20),
                  child: const Text('Get Api'),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
