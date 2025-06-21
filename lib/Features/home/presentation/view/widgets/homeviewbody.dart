import 'package:bookly_app/Features/home/presentation/view/widgets/Featuredlistview.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/customappbar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customappbar(),
        Featuredlistview(),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Best seller', style: styles.textStyle18),
        ),
        
      ],
    );
  }
}
