import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/notifications_bottom_part.dart';

class Notifications extends StatelessWidget {
  Notifications();

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Divider(
            height: 0.0,
            color: Colors.black54,
          ),
          NotificationsBottomPart(),
        ],
      );
  }
}
