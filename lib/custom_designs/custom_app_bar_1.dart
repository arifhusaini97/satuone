import 'package:flutter/material.dart';

class CustomAppBar1 extends StatelessWidget {
final List<BottomNavigationBarItem> bottomBarItems = [];

final bottomNavigationBarItemStyle = TextStyle(fontStyle: FontStyle.normal, color: Colors.black);

  CustomAppBar1() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: Colors.orange,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text(
          "Stages",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Text(
          "Search",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person_pin,
          color: Colors.black,
        ),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: Text(
          "Notifications",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.event,
          color: Colors.black,
        ),
        title: Text(
          "Events",
          style: TextStyle(fontSize: 0.0),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          Icons.arrow_right,
          color: Colors.black,
        ),
        title: Text(
          "Next",
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