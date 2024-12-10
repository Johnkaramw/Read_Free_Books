import 'package:book_app/Features/home/Data/model/book_model/book_model.dart';
import 'package:book_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetuchNewsbookhorzen();
  Future<Either<Failure,List<BookModel>>> fetuchrbookvertical();
}
