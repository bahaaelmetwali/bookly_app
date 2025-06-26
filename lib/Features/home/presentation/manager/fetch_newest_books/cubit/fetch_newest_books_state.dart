part of 'fetch_newest_books_cubit.dart';

sealed class FetchNewestBooksState extends Equatable {
  const FetchNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestbooksLoading extends FetchNewestBooksState {}

final class FetchNewestbooksSucessLoaded extends FetchNewestBooksState {
  final List<BookModel> books;

   const FetchNewestbooksSucessLoaded({required this.books});
}

final class FetchNewestbooksFailureLoaded extends FetchNewestBooksState {
  final String errorMessage;

  const FetchNewestbooksFailureLoaded({required this.errorMessage});
}