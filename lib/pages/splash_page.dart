// import 'dart:async';

import 'dart:async';

import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

  void initState() {

    Timer(Duration(seconds: 3),()=> Navigator.pushNamed(context, '/sign-in'));

    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryOrangeColor,
        body: Center(
          child: Container(
            width: 210,
            height: 175,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/Logo_Animise.png")),
            ),
          ),
        ));
  }
}
