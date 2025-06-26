import 'package:bookly_app/Features/home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/publish_date.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: BookImage(
              urlImage: bookModel.volumeInfo.imageLinks.thumbnail,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,

                  child: Text(
                    bookModel.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: styles.textStyle20.copyWith(
                      fontSize: 24,
                      fontFamily: KGtSectraFine,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: styles.textStyle14,
                ),
                SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Text('Free', style: styles.textStyle20),
                      Spacer(),
                      publishDate(publishTime: bookModel.volumeInfo.publishedDate!,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
