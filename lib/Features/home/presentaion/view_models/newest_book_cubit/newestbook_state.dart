part of 'newestbook_cubit.dart';

sealed class NewestbookState extends Equatable {
  const NewestbookState();

  @override
  List<Object> get props => [];
}

final class NewestbookInitial extends NewestbookState {}

final class NewestbookLoading extends NewestbookState {}

final class NewestbookFailure extends NewestbookState {
  final String errorMessege;

  const NewestbookFailure({required this.errorMessege});
}

final class NewestbookSuccess extends NewestbookState {
  final List<BookModel> books;

  const NewestbookSuccess({required this.books});
}
