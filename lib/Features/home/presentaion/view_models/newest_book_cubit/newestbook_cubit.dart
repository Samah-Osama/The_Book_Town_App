import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newestbook_state.dart';

class NewestbookCubit extends Cubit<NewestbookState> {
  NewestbookCubit(this.homeRepo) : super(NewestbookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewestbookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestbookFailure(errorMessege: failure.errorMessege));
    }, (book) {
      emit(
        NewestbookSuccess(books: book),
      );
    });
  }
}
