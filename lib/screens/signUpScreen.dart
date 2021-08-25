import 'package:flutter/material.dart';
import 'package:lox_services/size_config.dart';
import 'package:lox_services/widgets/default_button.dart';
import 'package:lox_services/widgets/textField.dart';

import 'login.dart';
import 'profile.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup';

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
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: 'LOGIN'),
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
            height: SizeConfig.screenHeight! * 0.02,
          ),
          FieldText(
              labelText: 'Referral', hintText: 'Enter your Referral code'),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.06,
          ),
          DefaultButton(
            press: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            text: 'SIGN UP',
            color: Colors.red,
            borderColor: Colors.transparent,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          Text(
            'By joining, you agree to your',
            style: TextStyle(fontSize: getProportionateScreenWidth(15)),
          ),
          Text(
            'Terms and Privacy',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                color: Colors.red,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
