part of 'generalbooks_cubit.dart';

sealed class GeneralbooksState extends Equatable {
  const GeneralbooksState();

  @override
  List<Object> get props => [];
}

final class GeneralbooksInitial extends GeneralbooksState {}

final class GeneralbooksLoading extends GeneralbooksState {}

final class GeneralbooksFailure extends GeneralbooksState {
  final String errorMessege;

  const GeneralbooksFailure({required this.errorMessege});
}

final class GeneralbooksSuccess extends GeneralbooksState {
  final List<BookModel> books;

 const GeneralbooksSuccess({required this.books});

}
