

class ServerExceptions implements Exception{
final String message;
final int? statusCode;
ServerExceptions({this.message="Server Error",this.statusCode});
}


class UnAuthorizedException implements Exception{}
class NetworkException implements Exception{
  final String message;
  NetworkException({this.message='No Internet Connection'});
}

