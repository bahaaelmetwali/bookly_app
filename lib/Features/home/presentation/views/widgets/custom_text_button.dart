import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.textcolor,
    required this.backgroundcolor,
    required this.borderRadius,
    required this.text,
  });
  final String text;
  final Color textcolor;
  final Color backgroundcolor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.37,
      child: AspectRatio(
        aspectRatio: 4 / 1.1,
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: styles.textStyle14.copyWith(
              color: textcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: borderRadius),
            ),
            backgroundColor: WidgetStateProperty.all(backgroundcolor),
          ),
        ),
      ),
    );
  }
}
