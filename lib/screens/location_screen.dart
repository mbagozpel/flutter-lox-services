import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';
import 'package:lox_services/widgets/custom_appbar.dart';
import 'package:lox_services/widgets/default_button.dart';

import 'orderScreen.dart';

class LocationScreen extends StatelessWidget {
  static const routeName = '/location';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Container(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            height: SizeConfig.screenHeight! * 0.08,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LIVE LOCATION',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text('Here you can change your location')
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '25.08.2021 12:53:PM ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Nigeria',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Image.asset('assets/images/map.png'),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          buildList(text: 'Your Location'),
          Divider(
            thickness: 2,
          ),
          buildList(text: 'Change Location', color: Colors.red),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text(
              'Onosa Ibeju Lekki',
              style: TextStyle(fontSize: getProportionateScreenWidth(20)),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          DefaultButton(
              press: () {
                Navigator.pushNamed(context, OrderScreen.routeName);
              },
              text: 'HOME')
        ],
      ),
    );
  }

  ListTile buildList({required String text, Color color = Colors.purple}) {
    return ListTile(
      leading: Container(
        height: getProportionateScreenHeight(20),
        width: getProportionateScreenWidth(20),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: getProportionateScreenWidth(20)),
      ),
    );
  }
}
