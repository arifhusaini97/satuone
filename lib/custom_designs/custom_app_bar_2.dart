import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget {
final List<BottomNavigationBarItem> bottomBarItems = [];

final bottomNavigationBarItemStyle = TextStyle(fontStyle: FontStyle.normal, color: Colors.black);

  CustomAppBar2() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.arrow_left,
          color: Colors.black,
        ),
        title: Text(
          "Left",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.event_seat,
          color: Colors.orange,
        ),
        icon: Icon(
          Icons.event_seat,
          color: Colors.black,
        ),
        title: Text(
          "Ranks",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.school,
          color: Colors.blue,
        ),
        title: Text(
          "Logo",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.0,
      child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}