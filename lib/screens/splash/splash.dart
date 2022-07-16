import 'dart:async';
import 'package:bank_app_ui/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:bank_app_ui/screens/main_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  _navigationPage() {
    Navigator.pushReplacement(
       context, MaterialPageRoute(builder: (ctx) => const Onboarding()));
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => _navigationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.white,
            alignment: Alignment.center,
            child: Image.asset("assets/logo.png")),
    );
  }
}
