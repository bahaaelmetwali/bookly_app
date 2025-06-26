import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_text_button.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featuredlistviewitem.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: BookImage(urlImage: 'https://variety.com/wp-content/uploads/2017/12/fx-logo.jpg?w=1000&h=563&crop=1',),
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
                SizedBox(height: 15),
                Rating(),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextButton(
                      text: '19.99 €',
                      textcolor: Colors.black,
                      backgroundcolor: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    CustomTextButton(
                      text: 'Free Preview',
                      textcolor: Colors.white,
                      backgroundcolor: Color(0xffef8363),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'You can also like',
                      style: styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 20),
                  child: SimilarBookListView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
