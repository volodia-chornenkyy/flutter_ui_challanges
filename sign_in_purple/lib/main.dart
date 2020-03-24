import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_in_purple/screens/SignInPage.dart';
import 'package:sign_in_purple/screens/SignUpPage.dart';

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
      home: SignUpPage(),
    );
  }
}
