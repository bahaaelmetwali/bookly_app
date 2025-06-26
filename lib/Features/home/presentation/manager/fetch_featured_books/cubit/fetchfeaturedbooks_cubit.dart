import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetchfeaturedbooks_state.dart';

class FetchfeaturedbooksCubit extends Cubit<FetchfeaturedbooksState> {
  FetchfeaturedbooksCubit(this.homeRepo) : super(FetchfeaturedbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchAllFeaturedBooks() async {
    emit(FetchfeaturedbooksLoading());
    var results = await homeRepo.fetchAllFeaturedBooks();
    results.fold(
      (servicefailure) {
        emit(
          FetchfeaturedbooksFailureLoaded(
            errorMessage: servicefailure.errorMessage,
          ),
        );
      },
      (books) {
        emit(FetchfeaturedbooksSucessLoaded(books: books));
      },
    );
  }
}
