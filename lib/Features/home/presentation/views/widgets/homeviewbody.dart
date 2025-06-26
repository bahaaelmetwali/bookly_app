import 'package:bookly_app/Features/home/presentation/views/widgets/Featuredlistview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/customappbar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customappbar(),
              Featuredlistview(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Text('Newest Books', style: styles.textStyle18),
              ),
              SizedBox(height: 1),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
