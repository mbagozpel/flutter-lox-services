import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lox_services/size_config.dart';

class EndedSuccessfully extends StatelessWidget {
  static const routeName = '/ended';

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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
