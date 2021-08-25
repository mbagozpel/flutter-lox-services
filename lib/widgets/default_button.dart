import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor, borderColor;

  DefaultButton(
      {required this.press,
      required this.text,
      this.color = Colors.black,
      this.textColor = Colors.white,
      this.borderColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: MaterialButton(
        color: color,
        onPressed: press,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button!.copyWith(
                fontSize: getProportionateScreenWidth(20),
                color: textColor,
              ),
        ),
        height: getProportionateScreenHeight(50),
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: borderColor, width: 2)),
      ),
    );
  }
}
