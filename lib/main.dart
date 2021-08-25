import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox_services/screens/amount_screen.dart';
import 'package:lox_services/screens/drawer_click.dart';
import 'package:lox_services/screens/endTask.dart';
import 'package:lox_services/screens/ended_sucesfully.dart';
import 'package:lox_services/screens/location_screen.dart';
import 'package:lox_services/screens/login.dart';
import 'package:lox_services/screens/main_page.dart';
import 'package:lox_services/screens/onboarding.dart';

import 'package:lox_services/screens/orderScreen.dart';
import 'package:lox_services/screens/profile.dart';
import 'package:lox_services/screens/startTask.dart';

import 'screens/signUpScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOX Services',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      home: Onboarding(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        OrderScreen.routeName: (context) => OrderScreen(),
        StartTask.routeName: (context) => StartTask(),
        TotalAmount.routeName: (context) => TotalAmount(),
        EndedSuccessfully.routeName: (context) => EndedSuccessfully(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        DrawerClick.routeName: (context) => DrawerClick(),
        MainPage.routeName: (context) => MainPage(
            begin: (ModalRoute.of(context)!.settings.arguments as Map)['begin'],
            end: (ModalRoute.of(context)!.settings.arguments as Map)['end'],
            startMoney: (ModalRoute.of(context)!.settings.arguments
                as Map)['start_money'],
            endMoney: (ModalRoute.of(context)!.settings.arguments
                as Map)['end_money']),
        EndTask.routeName: (context) => EndTask(),
        LocationScreen.routeName: (context) => LocationScreen()
      },
    );
  }
}
