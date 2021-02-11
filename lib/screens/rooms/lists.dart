import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/list_bottom_part.dart';
import 'package:satuone/screens/parts/list_top_part.dart';

class Lists extends StatefulWidget {
  Lists();
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<Lists> {
  _ListState();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: CustomSliverDelegate(),
              pinned: false,
              floating: true,
            ),
            SliverFixedExtentList(
              itemExtent: MediaQuery.of(context).size.height,
              delegate: SliverChildListDelegate(
                [
                  ListBottomPart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Scaffold(
      body: Container(
        child: ListTopPart(),
      ),
    );
  }

  @override
  double get maxExtent => 100.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
