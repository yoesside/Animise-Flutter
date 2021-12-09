import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username", style: secondaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold
             ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: textWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset("assets/icon_username.png",
                    width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: "Enter your username"
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput(){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Password", style: secondaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold
             ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: textWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset("assets/icon_password.png",
                    width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: "Enter your password"
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryOrangeColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(54, 47, 54, 0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 210,
                  height: 175,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/Logo_Animise.png"))
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Center(
                child: Container(
                  width: 152,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/Logo_Text.png"))
                  ),
                ),
              ),
              usernameInput(),
              passwordInput(),
            ],
          ),
        ),
      ),
    );
  }
}