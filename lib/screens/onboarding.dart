import 'package:flutter/material.dart';
import 'package:lox_services/widgets/default_button.dart';
import 'package:lox_services/size_config.dart';

import 'login.dart';
import 'signUpScreen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController? _controller;
  int _selectedIndex = 0;

  List<Widget> _list = [
    TextWidget(text: 'LOX \nSERVICES'),
    TextWidget(text: 'A DESIGN \nFOR ALL'),
    TextWidget(text: 'GET INVOLVED'),
    TextWidget(text: 'BASIC TASK'),
    TextWidget(text: 'INNOVATIVE \nDESIGN'),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _selectedIndex);
    WidgetsBinding.instance!.addPostFrameCallback((_) => _animatedSlider());
  }

  void _animatedSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _controller!.page!.round() + 1;

      if (nextPage == _list.length) {
        nextPage = 0;
      }

      _controller!
          .animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animatedSlider());
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.2,
            child: PageView(
              physics: ClampingScrollPhysics(),
              children: _list,
              controller: _controller,
              onPageChanged: (index) {
                _selectedIndex = index;
                setState(() {});
              },
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                _list.length, (index) => buildCircle(index: index)),
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.08,
          ),
          DefaultButton(
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: 'LOG IN'),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.02,
          ),
          DefaultButton(
              press: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              text: 'SIGN UP',
              color: Colors.white,
              textColor: Colors.black),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.1,
          )
        ],
      ),
    );
  }

  AnimatedContainer buildCircle({
    int? index,
  }) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 7),
      height: getProportionateScreenHeight(10),
      width: getProportionateScreenWidth(20),
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIndex == index ? Colors.black : Colors.grey),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;

  TextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: getProportionateScreenWidth(45),
                fontWeight: FontWeight.bold,
                height: 1.2,
                color: Colors.black)),
      ),
    );
  }
}
