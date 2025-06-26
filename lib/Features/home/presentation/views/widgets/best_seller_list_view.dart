import 'package:bookly_app/Features/home/presentation/manager/fetch_newest_books/cubit/fetch_newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestItemsListView extends StatelessWidget {
  const NewestItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestbooksSucessLoaded) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    context.go(AppRouter.kBookDetailsview);
                  },
                  child: NewestItem(bookModel: state.books[index]),
                ),
              );
            },
          );
        } else if (state is FetchNewestbooksFailureLoaded) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
