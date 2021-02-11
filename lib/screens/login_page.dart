import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/login_part.dart';

class LoginPage extends StatefulWidget {
  final String title;

  LoginPage({this.title});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            LoginPart(),
          ],
        ),
      ),
    );
  }
}
