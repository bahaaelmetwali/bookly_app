part of 'fetchsimilarbooks_cubit.dart';

sealed class FetchsimilarbooksState extends Equatable {
  const FetchsimilarbooksState();

  @override
  List<Object> get props => [];
}

final class FetchsimilarbooksInitial extends FetchsimilarbooksState {}

final class FetchsimilarbooksLoading extends FetchsimilarbooksState {}

final class FetchsimilarbooksFailure extends FetchsimilarbooksState {
  final String errorMessage;

  FetchsimilarbooksFailure({required this.errorMessage});
}

final class FetchsimilarbooksSucessed extends FetchsimilarbooksState {
  final List<BookModel> books;

  FetchsimilarbooksSucessed({required this.books});
}
