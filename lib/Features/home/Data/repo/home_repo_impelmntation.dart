import 'package:book_app/Features/home/Data/model/book_model/book_model.dart';
import 'package:book_app/Features/home/Data/repo/Home_repo.dart';
import 'package:book_app/core/error/failure.dart';
import 'package:book_app/core/help/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpelmntation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpelmntation(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetuchNewsbook() async {
    try {
      var data =
          await apiService.get(endpoint: 'volumes?q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          Netowrkfailure.fromDioError(e),
        );
      }
      {
        return left(Netowrkfailure(
          e.toString(),
        ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetuchfutcherbook() {
    // TODO: implement fetuchfutcherbook
    throw UnimplementedError();
  }
}
