import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetchsimilarbooks_state.dart';

class FetchsimilarbooksCubit extends Cubit<FetchsimilarbooksState> {
  FetchsimilarbooksCubit(this.homeRepo) : super(FetchsimilarbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchsimilarbooks({required String category}) async {
    emit(FetchsimilarbooksLoading());
    var results = await homeRepo.fetchSimilarBooks(category: category);
    results.fold(
      (Failure) {
        emit(FetchsimilarbooksFailure(errorMessage: Failure.errorMessage));
      },
      (books) {
        emit(FetchsimilarbooksSucessed(books: books));
      },
    );
  }
}
