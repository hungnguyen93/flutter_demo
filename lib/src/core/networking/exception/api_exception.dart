class ApiException implements Exception {
  final String? message;
  final bool? status;

  ApiException({
    this.message,
    this.status,
  });
}