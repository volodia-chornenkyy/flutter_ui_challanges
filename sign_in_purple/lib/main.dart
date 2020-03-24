import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_purple/widgets/background_widget.dart';
import 'package:sign_in_purple/widgets/input_widget.dart';
import 'package:sign_in_purple/widgets/social_login_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          backgroundColor: Color.fromRGBO(248, 249, 253, 1),
          primaryColor: Color.fromRGBO(103, 118, 253, 1),
          primaryColorDark: Color.fromRGBO(124, 57, 254, 1)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            BackgroundWidget(),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Helvetica-Bold,"),
                  ),
                  SizedBox(height: 8),
                  Text("Login to your account",
                      style: TextStyle(
                          color: Color.fromRGBO(205, 197, 255, 1),
                          fontSize: 15)),
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
                          hint: "Username or e-mail",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PasswordInputWidget(
                            iconData: Icons.vpn_key, hint: "Password"),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: Color.fromRGBO(112, 131, 164, 1)),
                              ),
                              Expanded(
                                child: _buildCheckBox(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: double.infinity,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(111, 109, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(111, 109, 255, .5),
                                    blurRadius: 15,
                                    offset: Offset(0, 5))
                              ]),
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "-- -- -- -- -- -- -- -- --  or  -- -- -- -- -- -- -- -- --  ",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(208, 219, 224, 1)),
                            ),
                          ),
                        ),
                        SocialLoginWidget(
                          iconData: Icons.android,
                          text: "LOGIN WITH FACEBOOK",
                          color: Color.fromRGBO(58, 93, 158, 1),
                        ),
                        SizedBox(height: 20),
                        SocialLoginWidget(
                          iconData: Icons.android,
                          text: "LOGIN WITH GOOGLE",
                          color: Color.fromRGBO(219, 79, 55, 1),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don’t you have an account?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(112, 131, 164, 1)),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Sign up Now!",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(111, 109, 255, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildCheckBox() {
    var checkBoxColor = Color.fromRGBO(111, 109, 255, 1);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 15,
          height: 15,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(border: Border.all(color: checkBoxColor)),
          child: Icon(
            Icons.check,
            size: 13,
            color: checkBoxColor,
          ),
        ),
        Text(
          "Keep me Signed",
          style: TextStyle(fontSize: 15, color: checkBoxColor),
        ),
      ],
    );
  }
}
