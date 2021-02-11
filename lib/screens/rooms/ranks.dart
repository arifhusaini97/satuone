import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/ranks_bottom_part.dart';
import 'package:satuone/screens/parts/ranks_top_part.dart';

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

class Ranks extends StatefulWidget {
  Ranks();
  @override
  _RanksState createState() => _RanksState();
}

class _RanksState extends State<Ranks> {
  _RanksState();

  final int house = 1;
  String _myList;
  String _listTypeCharInit;

  @override
  void initState() {
    super.initState();
    switch (house) {
      case 1:
        _listTypeCharInit = 'OVA';
        break;
      case 2:
        _listTypeCharInit = 'ORG';
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
            delegate: CustomSliverDelegateSearchRank(house, _updateListType),
            pinned: false,
            floating: true,
          ),
          SliverPersistentHeader(
            delegate: CustomSliverDelegateHeaderRank(),
            pinned: true,
            floating: false,
          ),
          SliverFixedExtentList(
            itemExtent: MediaQuery.of(context).size.height,
            delegate: SliverChildListDelegate(
              [
                RanksBottomPart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverDelegateSearchRank extends SliverPersistentHeaderDelegate {
  final int house;
  final Function _updateListType;
  CustomSliverDelegateSearchRank(this.house, this._updateListType);
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
            RanksTopPart(house: house, listType: _updateListType),
            Divider(
              height: 0.0,
              color: Colors.black54,
              indent: 10.0,
              endIndent: 10.0,
            ),
            SizedBox(
              height: 5.0,
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

class CustomSliverDelegateHeaderRank extends SliverPersistentHeaderDelegate{



  Widget _rankListHeader(_myList) {

    String _column1;
    String _column2;
    String _column3;

    _column1 = 'Rank';

    if (_myList == 'OVA') {
      _column2 = 'Person';
      _column3 = 'Points';
    } else if (_myList == 'ATTEND' || _myList == 'OGR') {
      _column2 = 'Person';
      _column3 = 'Merits';
    } else {
      if (_myList == 'ORG') {
        _column2 = 'Organization';
      } else if (_myList == 'EVN') {
        _column2 = 'Event';
      } else if (_myList == 'ASSOC') {
        _column2 = 'Association';
      }
      _column3 = 'Merits';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                _column1,
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              _column2,
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(
            _column3,
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
  String _myList='${ParentProvider.of(context).myList}';
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            _rankListHeader(_myList),
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
