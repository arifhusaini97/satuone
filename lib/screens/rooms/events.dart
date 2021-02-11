import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/events_bottom_part.dart';
import 'package:satuone/screens/parts/events_top_part.dart';

class ParentProvider extends InheritedWidget {
  final String myList;
  final Widget child;

  ParentProvider({this.myList, this.child}) : super(child: child);

  @override
  bool updateShouldNotify(ParentProvider oldWidget) {
    return true;
  }

  static ParentProvider of(BuildContext context) =>
      //context.inheritFromWidgetOfExactType(ParentProvider);
      context.dependOnInheritedWidgetOfExactType();
}

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  _EventsState();
  int house = 1;

  String _myList;
  String _listTypeCharInit;

  @override
  void initState() {
    super.initState();
    switch (house) {
      case 1:
        _listTypeCharInit = 'UCM';
        break;
      case 2:
        _listTypeCharInit = 'MVN';
        break;
      case 3:
        break;
      case 4:
        break;
      default:
        return null;
    }
    _myList = _listTypeCharInit;
  }

  _updateListType(String _listType) {
    setState(() {
      _myList = _listType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ParentProvider(
      myList: _myList,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: CustomSliverDelegateSearchEvent(house, _updateListType),
            pinned: false,
            floating: true,
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegateHeaderEvent(),
            pinned: true,
            floating: false,
          ),
          SliverFixedExtentList(
            itemExtent: MediaQuery.of(context).size.height,
            delegate: SliverChildListDelegate(
              [
                EventsBottomPart(house),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverDelegateSearchEvent extends SliverPersistentHeaderDelegate {
  final int house;
  final Function _updateListType;
  CustomSliverDelegateSearchEvent(this.house, this._updateListType);
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Divider(
              height: 0.0,
              color: Colors.black54,
            ),
            EventsTopPart(
              house: house,
              listType: _updateListType,
            ),
            Divider(
              height: 0.0,
              color: Colors.black54,
              indent: 10.0,
              endIndent: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 118.0;

  @override
  double get minExtent => 118.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class CustomSliverDelegateHeaderEvent extends SliverPersistentHeaderDelegate {
  Widget _eventListHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Date',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Events',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Text(
            'Action',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            _eventListHeader(),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 25.0;

  @override
  double get minExtent => 25.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
