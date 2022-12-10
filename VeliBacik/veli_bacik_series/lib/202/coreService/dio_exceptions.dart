class AppException implements Exception {
  final String message;
  AppException({required this.message});
}

class FetchDataException extends AppException {
  FetchDataException() : super(message: ExceptionMessages.fetchData.name);
}

class BadRequestException extends AppException {
  BadRequestException() : super(message: ExceptionMessages.badRequest.name);
}

enum ExceptionMessages { fetchData, badRequest }
