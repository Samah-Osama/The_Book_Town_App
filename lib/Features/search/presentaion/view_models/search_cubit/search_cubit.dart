import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/search/data/repos/search_repo.dart';
import 'package:booly_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());
  final SearchRepo searchRepo;
  Future<void> getBook({required String query}) async {
    emit(SearchLoadingState());
    var result = await searchRepo.searchOnBook(query: query);
    result.fold((failure) {
      emit(SearchFailureState(errorMessege: failure.errorMessege));
    }, (book) {
      emit(SearchSuccessState(books: book));
    });
  }
}
