import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';
import 'package:lox_services/widgets/custom_appbar.dart';

import 'endTask.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/mainPage';
  final double begin, end;
  final String startMoney, endMoney;
  static String? amount;

  MainPage(
      {required this.begin,
      required this.end,
      required this.startMoney,
      required this.endMoney});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _ischange = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: SizeConfig.screenHeight! * 0.2,
                width: SizeConfig.screenWidth! * 0.35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 10,
                          color: Colors.grey)
                    ]),
                child: Center(
                  child: Text(
                    '00',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
              Text(
                ':',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: getProportionateScreenWidth(200),
                    color: Colors.red),
              ),
              Container(
                height: SizeConfig.screenHeight! * 0.2,
                width: SizeConfig.screenWidth! * 0.35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 10,
                        color: Colors.grey),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TweenAnimationBuilder(
                  tween: Tween(begin: widget.begin, end: widget.end),
                  duration: Duration(seconds: 5),
                  builder: (_, double value, child) {
                    return Center(
                      child: Text(
                        '0${value.toInt()}',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    );
                  },
                  onEnd: () {
                    MainPage.amount = widget.endMoney;
                    setState(() {
                      _ischange = true;
                    });
                    Future.delayed(Duration(seconds: 5)).then((_) {
                      Navigator.pushNamed(context, EndTask.routeName);
                    });
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            height: SizeConfig.screenHeight! * 0.08,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount:',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.black),
                ),
                Text(
                  _ischange == true ? widget.endMoney : widget.startMoney,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
