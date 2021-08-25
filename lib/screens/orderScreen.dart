import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';
import 'package:lox_services/widgets/default_button.dart';

import 'drawer_click.dart';
import 'startTask.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = 'order';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.screenHeight! * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.06,
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: getProportionateScreenWidth(30),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, DrawerClick.routeName);
                  },
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(40)),
                  child: Image.asset(
                    'assets/images/lox.png',
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20),
                      top: getProportionateScreenHeight(10)),
                  child: Text(
                    'Order from \nLOX Services now',
                    // textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  'Order Now',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              buildContainer(text1: 'Task Title', text2: 'Hair Service'),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text('Time Estimated',
                    style: Theme.of(context).textTheme.headline6),
              ),
              buildContainer(
                  text1: 'Time Estimaged', text2: '2Hrs - 3Hrs', isFirst: true),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              DefaultButton(
                  press: () {
                    Navigator.pushNamed(context, StartTask.routeName);
                  },
                  text: 'Proceed')
            ],
          )
        ],
      ),
    );
  }

  Container buildContainer(
      {required String text1,
      required String text2,
      Color textColor = Colors.blue,
      bool isFirst = false}) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      height: SizeConfig.screenHeight! * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(color: textColor),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 6,
                  )
                ],
              ),
              Text(
                text2,
                style: TextStyle(fontSize: getProportionateScreenWidth(15)),
              )
            ],
          ),
          isFirst == true ? Icon(Icons.arrow_drop_down) : Container()
        ],
      ),
    );
  }
}
