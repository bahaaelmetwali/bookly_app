import 'package:bookly_app/Features/Splash/presentation/view/Splashview.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Kprimarycolor),
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}
