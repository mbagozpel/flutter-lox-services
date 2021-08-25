import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox_services/screens/amount_screen.dart';
import 'package:lox_services/screens/ended_sucesfully.dart';
import 'package:lox_services/screens/login.dart';

import 'package:lox_services/screens/orderScreen.dart';
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
      home: EndedSuccessfully(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        OrderScreen.routeName: (context) => OrderScreen(),
        StartTask.routeName: (context) => StartTask(),
        TotalAmount.routeName: (context) => TotalAmount(),
        EndedSuccessfully.routeName: (context) => EndedSuccessfully()
      },
    );
  }
}
