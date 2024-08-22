import 'package:booly_app/Features/search/data/repos/search_repo.dart';
import 'package:booly_app/core/errors/failure.dart';
import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:booly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImple implements SearchRepo {
  final ApiService apiService;

  SearchRepoImple({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchOnBook(
      {String query = 'book'}) async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=$query');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errorMessege: e.toString(),),);
    }
  }
}
