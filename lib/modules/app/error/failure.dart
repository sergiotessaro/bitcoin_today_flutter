class Failure {
  final String? message;

  Failure([this.message]);

  factory Failure.serverError([String? message]) => Failure(message);

  factory Failure.timeout() => Failure();
}
