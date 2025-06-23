import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featuredlistviewitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: BookImage(),
          ),
          SizedBox(height: 30),
          Text(
            'The Jungle Book',
            style: styles.textStyle30.copyWith(fontFamily: KGtSectraFine),
          ),
          Opacity(
            opacity: .8,
            child: Text('Rudyard Kipling', style: styles.textStyle14),
          ),
          SizedBox(height: 10),
          Rating(),
        ],
      ),
    );
  }
}
