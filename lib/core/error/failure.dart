import 'package:dio/dio.dart';

abstract class Failure {
  String errMessege;
  Failure(
    this.errMessege,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessege);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection time out with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send time out with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Recevie time out with ApiServer');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to Api server was canceled');
      case DioErrorType.connectionError:
        return ServerFailure('Connection Error out with ApiServer');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error, please try again');
      default:
        return ServerFailure('Oops something wrong, please try agian');
    }
  }

  factory ServerFailure.fromResponse(int statuesCode, dynamic response) {
    if (statuesCode == 400 || statuesCode == 401 || statuesCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuesCode == 404) {
      return ServerFailure('Your request not found, please try later');
    } else if (statuesCode == 500) {
      return ServerFailure('Internal Server error, please try later');
    } else {
      return ServerFailure('Oops something wrong, please try agian');
    }
  }
}
