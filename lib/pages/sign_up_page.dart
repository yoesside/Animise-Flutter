import 'package:animise_application/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget fullnameInput() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullname",
              style:
                  secondaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
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
                    Image.asset(
                      "assets/icon_fullname.png",
                      width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: "Enter your fullname"),
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

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username",
              style:
                  secondaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
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
                    Image.asset(
                      "assets/icon_username.png",
                      width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        
                        decoration: InputDecoration.collapsed(
                            hintText: "Enter your username"),
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

    Widget phoneNumberInput() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Phone number",
              style:
                  secondaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
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
                    Image.asset(
                      "assets/icon_phonenumber.png",
                      width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: "Enter your phone number"),
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

    Widget addressInput() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Address",
              style:
                  secondaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
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
                    Image.asset(
                      "assets/icon_address.png",
                      width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: "Enter your phone number"),
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

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style:
                  secondaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
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
                    Image.asset(
                      "assets/icon_password.png",
                      width: 23,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: "Enter your password"),
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

    Widget signUpButton() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: EdgeInsets.only(top: 65),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: primaryYellowColor,
          ),
          child: Text(
            "Sign Up",
            style: thirdTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
        ),
      );
    }


    return Scaffold(
      backgroundColor: primaryOrangeColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(54, 20, 54, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 152,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Logo_Text.png"))),
                ),
              ),
              fullnameInput(),
              usernameInput(),
              passwordInput(),
              phoneNumberInput(),
              addressInput(),
              signUpButton(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
