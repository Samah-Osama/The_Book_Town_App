import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<BookModel>>> fetchGeneralBooks();
 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
}
