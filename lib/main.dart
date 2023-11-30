import 'package:flutter/material.dart';

import 'src/dependency_injection/di.dart';
import 'src/core/injection/injector_container.dart';
import 'src/domain/usecases/auth_usecase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _authUsecase = injector.get<AuthUsecase>();

  void _onLogin() async {
    final result =
        await _authUsecase.login(phone: '08408408408', password: '11111111');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: GestureDetector(
              onTap: _onLogin,
              child: Container(
                  decoration: const BoxDecoration(color: Colors.amber),
                  padding: const EdgeInsets.all(20),
                  child: const Text('Get Api')),
            ),
          ),
        ),
      ),
    );
  }
}
