// import 'dart:js';

import 'package:animise_application/pages/sign_in_page.dart';
import 'package:animise_application/pages/splash_page.dart';
// import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage() 
      },
    );
  }
}
