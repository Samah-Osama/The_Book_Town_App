import 'package:booly_app/core/errors/failure.dart';
import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchOnBook({ String query});
}