import 'package:bookly_app/Features/home/presentation/views/widgets/rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image: AssetImage(AssetsData.test)),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,

                  child: Text(
                    'Harry potter                      and the Globet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: styles.textStyle20.copyWith(
                      fontSize: 24,
                      fontFamily: KGtSectraFine,
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Text('J.K Rowling', style: styles.textStyle14),
                SizedBox(height: 3),
                Rating(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
