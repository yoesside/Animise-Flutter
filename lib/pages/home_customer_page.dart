import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class HomeCustomerPage extends StatefulWidget {

  @override
  _HomeCustomerPageState createState() => _HomeCustomerPageState();
}

class _HomeCustomerPageState extends State<HomeCustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: primaryOrangeColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}