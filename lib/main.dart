import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infinitie_list_app/src/core/service/login_api.dart';

void main() {
  final dio = Dio();


  final client = ApiClient(dio);
  client
      .getLogin('08408408408', '11111111')
      .then((res) => {print(res)})
      .catchError((onError) => {print(onError)});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(body: SafeArea(child: Text('12313'))),
    );
  }
}
