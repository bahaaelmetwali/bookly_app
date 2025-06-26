import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_featured_books/cubit/fetchfeaturedbooks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Featuredlistview extends StatelessWidget {
  const Featuredlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchfeaturedbooksCubit, FetchfeaturedbooksState>(
      builder: (context, state) {
        if (state is FetchfeaturedbooksSucessLoaded) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.29,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.go(AppRouter.kBookDetailsview);
                    },
                    child: BookImage(
                      urlImage:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FetchfeaturedbooksFailureLoaded) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
