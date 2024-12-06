import 'package:dio/dio.dart';

abstract class Failure {
  final String errormessage;

  const Failure(this.errormessage);
}

class Netowrkfailure extends Failure {
  Netowrkfailure(super.errormasseage);
  factory Netowrkfailure.fromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return Netowrkfailure('Connection Timeuot With ApiServer');
      case DioExceptionType.sendTimeout:
        return Netowrkfailure('Send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return Netowrkfailure('Receive Timeout With ApiServer');
      case DioExceptionType.badCertificate:
        return Netowrkfailure('BadCertificate With ApiServer');
      case DioExceptionType.badResponse:
        return Netowrkfailure.FromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.cancel:
        return Netowrkfailure('Request Api was cancel');
      case DioExceptionType.connectionError:
        return Netowrkfailure('Connection Error With ApiServer');
      case DioExceptionType.unknown:
        return Netowrkfailure('The Error Unknown');
      case DioExceptionType.other:
        if (dioerror.message!.contains('SocketException')) {
          return Netowrkfailure('No Interner Conection');
        }
        return Netowrkfailure('Unexpected please try Again');
      default:
        return Netowrkfailure('Opps there was an error , please try Again');
    }
  }

  factory Netowrkfailure.FromResponse(int StatusCode, dynamic response) {
    if (StatusCode == 400 || StatusCode == 404 || StatusCode == 403) {
      return Netowrkfailure(response['error']['message']);
    } else if (StatusCode == 404) {
      return Netowrkfailure('Your reqest noy found ,please try later! ');
    } else if (StatusCode == 500) {
      return Netowrkfailure('internal server error , please try later');
    } else {
      return Netowrkfailure('Opps there was an error , please try Again');
    }
  }
}
