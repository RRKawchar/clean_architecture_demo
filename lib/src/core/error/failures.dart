import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;
  const Failure({this.message="An unexpected error occurred"});


  @override
  List<Object> get props => [message];
}


class ServerFailure extends Failure{

  const ServerFailure({String message="Server Error"}):super(message: message);
}


class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({String message = 'Unauthorized access'}) : super(message: message);
}
class NetworkFailure extends Failure {
  const NetworkFailure({String message = 'No Internet Connection'}) : super(message: message);
}
class UnknownFailure extends Failure {
  const UnknownFailure({String message = 'An unknown error occurred'}) : super(message: message);
}