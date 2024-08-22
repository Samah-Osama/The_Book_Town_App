import 'package:booly_app/Features/search/data/repos/search_repo.dart';
import 'package:booly_app/core/errors/failure.dart';
import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:booly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementaion implements SearchRepo {
  final ApiService apiService;

  SearchRepoImplementaion({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchOnBook(
      {String query = 'book'}) async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=$query');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
        if (query != null) {
          books = books
              .where((book) => book.volumeInfo!.title!.contains(query))
              .toList();
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          errorMessege: e.toString(),
        ),
      );
    }
  }
}
