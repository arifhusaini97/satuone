import 'package:flutter/material.dart';
import 'package:satuone/screens/parts/profile_bottom_part/activity_role_tentative.dart';
import 'package:satuone/screens/parts/profile_bottom_part/biodata_about.dart';
import 'package:satuone/screens/parts/profile_bottom_part/discussion.dart';
import 'package:satuone/screens/parts/profile_bottom_part/code.dart';
import 'package:satuone/screens/parts/profile_bottom_part/user_data.dart';
import 'package:satuone/screens/parts/profile_bottom_part/user_gallery.dart';
import 'package:satuone/screens/parts/profile_bottom_part/user_stage.dart';
import 'package:satuone/screens/parts/profile_top_part.dart';

class Profile extends StatefulWidget {
  final int id;
  final int house;
  final bool _isOwner;

  Profile(this._isOwner, this.house, this.id);

  @override
  _ProfileState createState() => _ProfileState(_isOwner, house, id);
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  ScrollController _scrollController;

  final int id;
  final int house;
  final bool _isOwner;

  _ProfileState(this._isOwner, this.house, this.id);

  String _containTabBar1;
  String _containTabBar2;
  String _containTabBar3;
  String _containTabBar4;
  String _containTabBar5;
  //String _containTabBar6;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (house) {
      case 1:
        _containTabBar1 = 'Home';
        _containTabBar2 = 'Biodata';
        _containTabBar3 = 'Activity';
        _containTabBar4 = 'Data';
        _containTabBar5 = 'Gallery';
        break;

      case 2:
        _containTabBar1 = 'Home';
        _containTabBar2 = 'About';
        _containTabBar3 = 'Roles';
        _containTabBar4 = 'Data';
        _containTabBar5 = 'Gallery';
        break;

      case 3:
        //_containTabBar1 = 'Discussion';
        _containTabBar1 = 'Code';
        _containTabBar2 = 'About';
        _containTabBar3 = 'Tentative';
        _containTabBar4 = 'Data';
        _containTabBar5 = 'Gallery';
        break;

      case 4:
        _containTabBar1 = 'Home';
        _containTabBar2 = 'About';
        _containTabBar3 = 'Roles';
        _containTabBar4 = 'Data';
        _containTabBar5 = 'Gallery';
        break;

      default:
        return null;
    }

    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          body: RefreshIndicator(
            onRefresh: () async {},
            child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
                return <Widget>[
                  // User information section
                  SliverToBoxAdapter(
                    child: ProfileTopPart(_isOwner, house, id),
                  ),
                ];
              },
              body: Column(
                children: <Widget>[
                  Divider(
                    height: 0.0,
                    color: Colors.black54,
                  ),
                  PreferredSize(
                    preferredSize: Size.fromHeight(20.0),
                    child: TabBar(
                      indicatorColor: Colors.purple,
                      labelColor: Colors.black,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: _containTabBar1,
                        ),
                        Tab(
                          text: _containTabBar2,
                        ),
                        Tab(
                          text: _containTabBar3,
                        ),
                        Tab(
                          text: _containTabBar4,
                        ),
                        Tab(
                          text: _containTabBar5,
                        )
                      ], // list of tabs
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          child: house != 3
                              ? UserStage()
                              : SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Code()),
                        ),
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: BiodataAbout(house),
                          ),
                        ),
                        Container(
                          child: ActivityRoleTentative(house),
                        ),
                        Container(
                          child: UserData(),
                        ),
                        Container(
                          child: UserGallery(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
