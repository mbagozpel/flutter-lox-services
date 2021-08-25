import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class EndTask extends StatelessWidget {
  static const routeName = '/start';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
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
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(25)),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.08,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/images/warningSmall.svg',
              height: SizeConfig.screenHeight! * 0.2,
            ),
          ),
          SizedBox(
            height: SizeConfig.screenWidth! * 0.1,
          ),
          Text('End Task?', style: Theme.of(context).textTheme.headline5),
          SizedBox(
            height: SizeConfig.screenWidth! * 0.3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  height: getProportionateScreenHeight(60),
                  minWidth: SizeConfig.screenWidth! * 0.35,
                  color: Colors.white,
                  child: Text(
                    'NO',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(20)),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.black)),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: getProportionateScreenHeight(60),
                  minWidth: SizeConfig.screenWidth! * 0.35,
                  color: Colors.black,
                  child: Text(
                    'YES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(20)),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
