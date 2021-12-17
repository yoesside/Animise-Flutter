import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class ChatCustomerPage extends StatelessWidget {
  const ChatCustomerPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: primaryOrangeColor,
        automaticallyImplyLeading: false,
      ),
    );
  }
}