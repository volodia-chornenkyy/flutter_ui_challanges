import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_purple/widgets/background_widget.dart';
import 'package:sign_in_purple/widgets/input_widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            BackgroundWidget(),
            SizedBox(
              width: double.infinity,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Helvetica-Bold,"),
                ),
                SizedBox(height: 8),
                Text("Create a new account",
                    style: TextStyle(
                        color: Color.fromRGBO(205, 197, 255, 1), fontSize: 15)),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 5)
                      ]),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      InputWidget(
                        iconData: Icons.person,
                        hint: "Full name",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputWidget(
                        iconData: Icons.mail,
                        hint: "E-mail Address",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputWidget(
                        iconData: Icons.phone_android,
                        hint: "Phone number",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordInputWidget(
                          iconData: Icons.vpn_key, hint: "Create password"),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordInputWidget(
                          iconData: Icons.vpn_key, hint: "Confirm password"),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Allready have an account?",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(112, 131, 164, 1)),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Sign in Now!",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(111, 109, 255, 1)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(111, 109, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(111, 109, 255, .5),
                            blurRadius: 15,
                            offset: Offset(0, 5))
                      ]),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
