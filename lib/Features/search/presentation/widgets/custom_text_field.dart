import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Opacity(
          opacity: .8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 20,
          ),
        ),
        hintText: 'Search',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),

          borderSide: BorderSide(
            color: Colors.grey, // لما مش متفاعل
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),

          borderSide: BorderSide(
            color: Colors.blue, // لما يضغط عليه
            width: 2,
          ),
        ),
      ),
    );
  }
}
