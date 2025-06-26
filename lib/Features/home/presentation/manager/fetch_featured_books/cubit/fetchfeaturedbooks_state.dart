part of 'fetchfeaturedbooks_cubit.dart';

sealed class FetchfeaturedbooksState extends Equatable {
  const FetchfeaturedbooksState();

  @override
  List<Object> get props => [];
}

final class FetchfeaturedbooksInitial extends FetchfeaturedbooksState {}

final class FetchfeaturedbooksLoading extends FetchfeaturedbooksState {}

final class FetchfeaturedbooksSucessLoaded extends FetchfeaturedbooksState {
  final List<BookModel> books;

   const FetchfeaturedbooksSucessLoaded({required this.books});
}

final class FetchfeaturedbooksFailureLoaded extends FetchfeaturedbooksState {
  final String errorMessage;

  const FetchfeaturedbooksFailureLoaded({required this.errorMessage});
}
