import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lox_services/size_config.dart';
import 'package:lox_services/widgets/custom_appbar.dart';

import 'amount_screen.dart';

class EndedSuccessfully extends StatelessWidget {
  static const routeName = '/ended';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(seconds: 3),
              builder: (_, value, child) => Container(),
              onEnd: () {
                Navigator.pushNamed(context, TotalAmount.routeName);
              },
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            SvgPicture.asset('assets/images/ok.svg',
                height: SizeConfig.screenHeight! * 0.25),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.04,
            ),
            Text(
              'Ended Succesfully',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
