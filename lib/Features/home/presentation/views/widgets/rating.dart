import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class publishDate extends StatelessWidget {
  const publishDate({super.key, required this.publishTime});
  final String publishTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.calendar, color: Color(0xfffddb5c), size: 24),
        SizedBox(width: 5.8),
        Text(
          publishTime,
          style: styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
