import 'package:flutter/material.dart';
import 'package:lox_services/widgets/default_button.dart';
import 'package:lox_services/size_config.dart';

import '../widgets/textField.dart';
import 'orderScreen.dart';
import 'signUpScreen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),
          Text(
            'LOX SERVICES',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),
          DefaultButton(
              press: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              text: 'SIGN UP'),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),
          Text(
            'OR',
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          FieldText(labelText: 'Phone', hintText: 'Enter your Phone Number'),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          FieldText(labelText: 'Password', hintText: 'Enter your Password'),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.06,
          ),
          DefaultButton(
            press: () {
              Navigator.pushNamed(context, OrderScreen.routeName);
            },
            text: 'LOGIN',
            color: Colors.red,
            borderColor: Colors.transparent,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Text(
            'Forgot Password?',
            style: TextStyle(fontSize: getProportionateScreenWidth(15)),
          )
        ],
      ),
    );
  }
}
