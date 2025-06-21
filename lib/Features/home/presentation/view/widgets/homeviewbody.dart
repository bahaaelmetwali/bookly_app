import 'package:bookly_app/Features/home/presentation/view/widgets/Featuredlistview.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Customappbar(), Featuredlistview()]);
  }
}
