import 'package:bookly_app/Features/home/presentation/views/widgets/featuredlistviewitem.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Featuredlistview extends StatelessWidget {
  const Featuredlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.29,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.go(AppRouter.kBookDetailsview);
              },
              child: Featuredlistviewitem(),
            );
          },
        ),
      ),
    );
  }
}
