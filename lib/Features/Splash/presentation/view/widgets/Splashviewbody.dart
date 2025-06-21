import 'package:bookly_app/Features/home/presentation/views/homeview.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController animationController;
  late Animation<Offset> _slidinganimation;
  void initState() {
    // TODO: implement initState
    super.initState();
    intiateanimation();
    navigatetohome();
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(image: const AssetImage(AssetsData.Logo)),
        Center(
          child: SlideTransition(
            position: _slidinganimation,
            child: const Text('Read Free Books'),
          ),
        ),
      ],
    );
  }

  void intiateanimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _slidinganimation = Tween<Offset>(
      begin: Offset(0, 12),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  void navigatetohome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => Homeview());
    });
  }
}
