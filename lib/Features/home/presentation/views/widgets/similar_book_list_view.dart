import 'package:bookly_app/Features/home/presentation/views/widgets/featuredlistviewitem.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.go(AppRouter.kBookDetailsview);
            },
            child: BookImage(urlImage: 'https://variety.com/wp-content/uploads/2017/12/fx-logo.jpg?w=1000&h=563&crop=1',),
          );
        },
      ),
    );
  }
}
