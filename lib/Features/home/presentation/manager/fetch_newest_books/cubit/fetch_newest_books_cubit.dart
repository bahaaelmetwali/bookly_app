import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.homeRepo) : super(FetchNewestBooksInitial());
    final HomeRepo homeRepo;
  Future<void> fetchAllFeaturedBooks() async {
    emit(FetchNewestbooksLoading());
    var results = await homeRepo.fetchAllFeaturedBooks();
    results.fold(
      (servicefailure) {
        emit(
          FetchNewestbooksFailureLoaded(
            errorMessage: servicefailure.errorMessage,
          ),
        );
      },
      (books) {
        emit(FetchNewestbooksSucessLoaded(books: books));
      },
    );
  }
}
