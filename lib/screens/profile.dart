import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';
import 'package:lox_services/widgets/custom_appbar.dart';
import 'package:lox_services/widgets/default_button.dart';

import 'orderScreen.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Text(
              'Get Started',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            margin: EdgeInsets.only(
              left: getProportionateScreenWidth(40),
            ),
            height: SizeConfig.screenHeight! * 0.18,
            width: SizeConfig.screenWidth! * 0.42,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(color: Colors.grey, width: 1),
              // borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image,
                  color: Colors.white,
                  size: getProportionateScreenWidth(70),
                ),
                Text('Upload Image')
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Full Names',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: getProportionateScreenWidth(14),
                      ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 6,
                )
              ],
            ),
          ),
          buildContainer(
            widget: Center(
              child: Text('AMINA LATEEF',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          buildContainer(
            widget: Row(
              children: [
                Icon(Icons.date_range),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Date of birth',
                          // style: TextStyle(color: textColor),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 6,
                        )
                      ],
                    ),
                    Text(
                      '26 Jun 2020',
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(15)),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          buildContainer(
              widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.credit_card),
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  ),
                  Text(
                    'Add debit/credit card',
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              Icon(Icons.add)
            ],
          )),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.08,
          ),
          DefaultButton(
              press: () {
                Navigator.pushNamed(context, OrderScreen.routeName);
              },
              text: 'SAVE')
        ],
      ),
    );
  }

  Container buildContainer({required Widget widget}) {
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
        child: widget);
  }
}
