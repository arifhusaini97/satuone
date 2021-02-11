import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/search_top_part.dart';

class Search extends StatelessWidget {
  Search();

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Divider(
              height: 0.0,
              color: Colors.black54,
            ),
            SearchTopPart(),
            PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: TabBar(
                indicatorColor: Colors.purple,
                labelColor: Colors.black,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'TOP',
                  ),
                  Tab(
                    text: 'PERSONS',
                  ),
                  Tab(
                    text: 'ORGANIZATIONS',
                  ),
                  Tab(
                    text: 'EVENTS',
                  ),
                ], // list of tabs
              ),
            ),
            //TabBarView(children: [ImageList(),])
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: Center(child: Text('Tab1')),
                  ),
                  Container(
                    child: Center(child: Text('Tab2')),
                  ),
                  Container(
                    child: Center(child: Text('Tab3')),
                  ),
                  Container(
                    child: Center(child: Text('Tab4')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
    // Column(
    //   children: <Widget>[
    //     Divider(
    //       height: 0.0,
    //       color: Colors.black54,
    //     ),
    //     SearchTopPart(),
    //     Divider(
    //       height: 0.0,
    //       color: Colors.black54,
    //       indent: 10.0,
    //       endIndent: 10.0,
    //     ),
    //   ],
    // );
  }
}
