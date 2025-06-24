import 'package:bookly_app/Features/search/presentation/widgets/SearchListview.dart';
import 'package:bookly_app/Features/search/presentation/widgets/custom_text_field.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(height: 20),
          Text('Search Result', style: styles.textStyle18),
          SizedBox(height: 15),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
