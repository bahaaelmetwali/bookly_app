import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                  children: [
                    Text('19.99€', style: styles.textStyle20),
                    Spacer(),
                    Icon(FontAwesomeIcons.solidStar, color: Color(0xfffddb5c)),
                    SizedBox(width: 5.8),
                    Text(
                      '4.8',
                      style: styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.8),
                    Text('(2390)'),
                    SizedBox(width: 50),
                  ],
                );
  }
}