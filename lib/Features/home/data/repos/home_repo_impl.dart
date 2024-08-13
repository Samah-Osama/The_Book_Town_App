import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/data/repos/home_repo.dart';
import 'package:booly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchGeneralBooks() {
    // TODO: implement fetchGeneralBooks
    throw UnimplementedError();
  }
  
}