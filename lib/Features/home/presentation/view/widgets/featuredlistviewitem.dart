import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Featuredlistviewitem extends StatelessWidget {
  const Featuredlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),

            image: DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
