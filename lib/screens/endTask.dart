import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lox_services/widgets/custom_appbar.dart';

import '../size_config.dart';
import 'ended_sucesfully.dart';
import 'main_page.dart';

class EndTask extends StatelessWidget {
  static const routeName = '/end';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
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
                    Navigator.pushNamed(context, MainPage.routeName,
                        arguments: {
                          'begin': 2.0,
                          'end': 3.0,
                          'start_money': 'N2000',
                          'end_money': 'N3000'
                        });
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
                  onPressed: () {
                    Navigator.pushNamed(context, EndedSuccessfully.routeName);
                  },
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
