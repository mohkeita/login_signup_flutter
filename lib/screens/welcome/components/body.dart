import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup/components/rounded_Button.dart';
import 'package:login_signup/constant.dart';
import 'package:login_signup/screens/Login/login_screen.dart';
import 'package:login_signup/screens/SignUp/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  },),);
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignUpScreen();
                  },),);
                },
              ),
          ],

    ),
      ),);
  }
}



