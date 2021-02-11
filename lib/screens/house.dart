import 'package:flutter/material.dart';
import 'package:satuone/screens/rooms/events.dart';
import 'package:satuone/screens/rooms/lists.dart';
import 'package:satuone/screens/rooms/notifications.dart';
import 'package:satuone/screens/rooms/profile.dart';
import 'package:satuone/screens/rooms/ranks.dart';
import 'package:satuone/screens/rooms/search.dart';
import 'package:satuone/screens/rooms/stages.dart';

class House extends StatefulWidget {
  @override
  _HouseState createState() => _HouseState();
}

class _HouseState extends State<House> with SingleTickerProviderStateMixin {
  int currentIndex = 3;
  List<Widget> _widgetOptions = <Widget>[
    Search(),
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Notifications(),
    ),
    Profile(true, 1, 4),
    Stages(),
    Events(),
    Ranks(),
    Lists(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _widgetOptions[currentIndex]),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget bottomNavBar() {
    final List<BottomNavigationBarItem> items = [
      // First item
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
        ),
        title: Text(''),
      ),
      // Second item
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
        ),
        title: Text(''),
      ),
      // Third item
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person_pin,
        ),
        title: Text(''),
      ),
      // Fourth item
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        title: Text(''),
      ),
      // Fifth item
      BottomNavigationBarItem(
        icon: Icon(
          Icons.event,
        ),
        title: Text(''),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.event_seat,
        ),
        title: Text(''),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.list,
        ),
        title: Text(''),
      ),
    ];

    return BottomNavigationBar(
      items: items,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      currentIndex: currentIndex,
      iconSize: 24.0,
      showSelectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedFontSize: 0.0,
      type: BottomNavigationBarType.fixed,
      elevation: 18.0,
      backgroundColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Colors.purple,
        size: 40.0,
      ),
      unselectedIconTheme: IconThemeData(color: Colors.black),
    );
  }
}

//If want to use appBar

// TabController _tabController;
// @override
// void initState() {
//   super.initState();
//   _tabController = new TabController(vsync: this, initialIndex: 0, length: 7);
// }
//resizeToAvoidBottomInset: true,
// appBar: TabBar(
//   indicatorWeight: 14.0,
//   indicator: BoxDecoration(
//     color: Colors.purple,
//     shape: BoxShape.rectangle,
//     // borderRadius: BorderRadius.only(
//     //   topLeft: Radius.circular(15.0),
//     //   topRight: Radius.circular(15.0),
//     // ),
//   ),
//   labelPadding: EdgeInsets.symmetric(vertical: 43.0, horizontal: 23.0),
//   isScrollable: true,
//   indicatorSize: TabBarIndicatorSize.tab,
//   unselectedLabelColor: Colors.black,
//   labelColor: Colors.white,
//   controller: _tabController,
//   indicatorColor: Colors.white,
//   tabs: <Widget>[
//     Tab(
//       icon: Icon(
//         Icons.home,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.search,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.person_pin,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.notifications,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.event,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.event_seat,
//       ),
//     ),
//     Tab(
//       icon: Icon(
//         Icons.list,
//       ),
//     ),
//   ],
// ),
// body: TabBarView(
//   controller: _tabController,
//   children: <Widget>[
//     Stages(),
//     Search(),
//     Profile(true, 1, 4),
//     SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Notifications(),
//     ),
//     SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Events(),
//     ),
//     SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Ranks(),
//     ),
//     SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Lists(),
//     ),
//   ],
// ),
// floatingActionButton: FloatingActionButton(
//   backgroundColor: Colors.purple,
//   child: Icon(
//     Icons.add,
//     color: Colors.white,
//   ),
//   onPressed: () => print('Open Chat'),
// ),
