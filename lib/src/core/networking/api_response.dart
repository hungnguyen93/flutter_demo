// Copyright 2022 Fighttech.vn, Ltd. All rights reserved.

import 'package:json_annotation/json_annotation.dart';

import 'exception/api_exception.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  
  final String? message;
  final String status;

  @JsonKey(name: 'data', includeIfNull: false)
  final T? _data;

  ApiResponse({
    this.message,
    required this.status,
    T? data,
  }) : _data = data;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromT,
  ) {
    final response = _$ApiResponseFromJson(json, fromT);

    return response;
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);

  T get data => _getData();

  bool get success => _success();

  T _getData() {
    _checkException();
    return _data as T;
  }

  bool _success() {
    return int.parse(status) == 0;
  }

  void _checkException() {
    if (int.parse(status) != 0) {
      throw ApiException(message: message!, status: status);
    }
  }
}

Object? _readValueStatus(Map p1, String p2) {
  if (p1[p2] != null) {
    return p1[p2];
  }

  if (p1['status'] != null) {
    return p1['status'];
  }

  if (p1['success'] == true) {
    return 200;
  }

  return 200;
}

class ErrorInfo {
  final String status;
  final String? message;

  ErrorInfo(this.status, this.message);

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{}
      ..addAll({'status': status})
      ..addAll({'message': message});

    return result;
  }

  factory ErrorInfo.fromJson(Map<String, dynamic> map) {
    return ErrorInfo(
      map['status']?.toInt() ?? 0,
      map['message'] ?? '',
    );
  }
}
