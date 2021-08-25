import 'package:flutter/material.dart';

import '../size_config.dart';

class FieldText extends StatelessWidget {
  final String labelText;
  final String hintText;

  FieldText({required this.labelText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: labelText,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
