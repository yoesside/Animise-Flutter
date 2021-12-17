// import 'dart:js';

import 'package:animise_application/pages/add_product_page.dart';
import 'package:animise_application/pages/homescreen_admin_page.dart';
import 'package:animise_application/pages/homescreen_customer_page.dart';
import 'package:animise_application/pages/sign_in_page.dart';
import 'package:animise_application/pages/sign_up_page.dart';
import 'package:animise_application/pages/splash_page.dart';
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
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/homescreen-admin': (context) => HomescreenAdminPage(),
        '/add-product': (context) => AddProductPage(),
        '/main-customer': (conter) => MainCustomerPage(),
      },
    );
  }
}
