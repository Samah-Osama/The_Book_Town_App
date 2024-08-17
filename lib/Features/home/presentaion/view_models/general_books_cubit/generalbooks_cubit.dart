import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'generalbooks_state.dart';

class GeneralbooksCubit extends Cubit<GeneralbooksState> {
  GeneralbooksCubit(this.homeRepo) : super(GeneralbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchGeneralBooks() async {
    emit(GeneralbooksLoading());
    var result = await homeRepo.fetchGeneralBooks();
    result.fold((failure) {
      emit(
        GeneralbooksFailure(errorMessege: failure.errorMessege),
      );
    }, (book) {
      emit(
        GeneralbooksSuccess(books: book),
      );
    });
  }
}
