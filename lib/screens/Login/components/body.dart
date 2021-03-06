import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup/components/already_have_an_account_acheck.dart';
import 'package:login_signup/components/rounded_Button.dart';
import 'package:login_signup/components/rounded_input_file.dart';
import 'package:login_signup/components/rounded_password_field.dart';
import 'package:login_signup/screens/SignUp/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Background(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset("assets/icons/login.svg",
            height: size.height * 0.35,),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              hintText: "Your Email",
              onChanges: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "LOGIN",
              press: (){},
            ),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SignUpScreen();
                    },),);
              },
            ),

          ],
          ),
      ),
      );
  }
}









