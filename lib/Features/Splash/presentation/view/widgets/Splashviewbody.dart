import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
          Image(image: AssetImage(AssetsData.Logo)),
          Center(child: Text('Read Free Books')),
      ],
    );
  }
}
