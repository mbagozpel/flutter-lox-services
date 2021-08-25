import 'package:flutter/material.dart';
import 'package:lox_services/widgets/custom_appbar.dart';
import 'package:lox_services/widgets/default_button.dart';

import '../size_config.dart';
import 'orderScreen.dart';
import 'main_page.dart';

class TotalAmount extends StatelessWidget {
  static const routeName = '/total';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            height: SizeConfig.screenHeight! * 0.12,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Text(
              'Total Amount: ${MainPage.amount}',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            )),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.2,
          ),
          DefaultButton(
              press: () {
                Navigator.pushNamed(context, OrderScreen.routeName);
              },
              text: 'CLOSE')
        ],
      ),
    );
  }
}
