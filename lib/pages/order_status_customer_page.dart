import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class OrderStatusCustomerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Status"),
        backgroundColor: primaryOrangeColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}