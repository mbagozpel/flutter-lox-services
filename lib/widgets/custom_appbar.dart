import 'package:flutter/material.dart';
import 'package:lox_services/screens/drawer_click.dart';

import '../size_config.dart';

buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: false,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(
            Icons.menu,
            size: getProportionateScreenWidth(30),
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, DrawerClick.routeName);
          },
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.2,
        ),
        Text(
          'LOX SERVICES',
          style: TextStyle(
              color: Colors.black, fontSize: getProportionateScreenWidth(25)),
        ),
      ],
    ),
    elevation: 0,
  );
}
