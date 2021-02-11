import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final IconData icon1;
  final TextEditingController controller1;
  final String hint;

  CustomTextField1({this.icon1, this.controller1, this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 50.0,
      ),
      child: Material(
        child: TextField(
          controller: controller1,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            height: 1.5,
          ),
          cursorColor: Colors.red,
          decoration: InputDecoration(
            hintText: hint,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            prefixIcon: Material(
              color: Colors.transparent,
              elevation: 0.0,
              child: Icon(
                icon1,
                color: Colors.grey,
                size: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}