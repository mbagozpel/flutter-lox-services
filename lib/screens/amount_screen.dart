import 'package:flutter/material.dart';
import 'package:lox_services/widgets/default_button.dart';

import '../size_config.dart';

class TotalAmount extends StatelessWidget {
  static const routeName = '/total';

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
              'Total Amount: N2000',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            )),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.2,
          ),
          DefaultButton(press: () {}, text: 'CLOSE')
        ],
      ),
    );
  }
}
