class AppExceptions {
  final String message;
  final String prefix;
  final String url;

  AppExceptions(this.message, this.prefix, this.url);
}

class BadRequestExceptions extends AppExceptions {
  BadRequestExceptions(String message, String url)
      : super(message, 'Bad Request', url);
}

class FetchDataExceptions extends AppExceptions {
  FetchDataExceptions(String message, String url)
      : super(message, 'Unable to process', url);
}

class ApiNotRespondingExceptions extends AppExceptions {
  ApiNotRespondingExceptions(String message, String url)
      : super(message, 'Api not responding', url);
}

class UnauthorizedExceptions extends AppExceptions {
  UnauthorizedExceptions(String message, String url)
      : super(message, 'Unauthorized Request', url);
}
