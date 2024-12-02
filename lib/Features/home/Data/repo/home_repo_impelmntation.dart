import 'package:book_app/Features/home/Data/model/book_model/book_model.dart';
import 'package:book_app/Features/home/Data/repo/Home_repo.dart';
import 'package:book_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpelmntation implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetuchbestsellrbook() {
    // TODO: implement fetuchbestsellrbook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetuchfutcherbook() {
    // TODO: implement fetuchfutcherbook
    throw UnimplementedError();
  }
  
}