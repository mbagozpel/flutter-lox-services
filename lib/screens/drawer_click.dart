import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';

import 'location_screen.dart';
import 'login.dart';
import 'orderScreen.dart';
import 'profile.dart';

class DrawerClick extends StatelessWidget {
  static const routeName = '/drawer';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.08,
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: getProportionateScreenWidth(30),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.08,
          ),
          buildContainer(
              text: 'Edit Profile',
              icon: Icons.person,
              press: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              }),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          buildContainer(
              text: 'Home',
              press: () {
                Navigator.pushNamed(context, OrderScreen.routeName);
              },
              icon: Icons.home),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          buildContainer(
              text: 'Check Location',
              press: () {
                Navigator.of(context).pushNamed(LocationScreen.routeName);
              },
              icon: Icons.location_city),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          buildContainer(
              text: 'Sign Out',
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              icon: Icons.logout,
              textColor: Colors.red),
        ],
      ),
    );
  }

  Widget buildContainer(
      {required String text,
      required Function() press,
      required IconData icon,
      textColor = Colors.black54}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 40,
        color: textColor,
      ),
      onTap: press,
      title: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: getProportionateScreenWidth(20),
        ),
      ),
    );
  }
}
