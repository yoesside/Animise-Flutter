import 'dart:io';

import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileCustomerPage extends StatefulWidget {
  @override
  _ProfileCustomerPageState createState() => _ProfileCustomerPageState();
}

class _ProfileCustomerPageState extends State<ProfileCustomerPage> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image!.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: primaryOrangeColor,
        automaticallyImplyLeading: false,
        actions: [
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
            ],
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 40, 20, 20),
        child: Column(
          children: [
            Row(children: [
              ClipOval(
                child: image != null
                    ? Image.file(
                        image!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        "assets/Profile_admin.png",
                        width: 100,
                      ),
              ),
              SizedBox(
                width: 23,
              ),
              Text("Rindo Alexiel",
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 14,
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
