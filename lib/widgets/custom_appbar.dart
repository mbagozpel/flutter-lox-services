import 'package:flutter/material.dart';

import '../size_config.dart';

buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(
          Icons.menu,
          size: getProportionateScreenWidth(30),
          color: Colors.black,
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.2,
        ),
        Text(
          'LOX SERVICE',
          style: TextStyle(
              color: Colors.black, fontSize: getProportionateScreenWidth(25)),
        ),
      ],
    ),
    elevation: 0,
  );
}
