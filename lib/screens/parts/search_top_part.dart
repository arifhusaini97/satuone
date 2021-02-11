import 'package:flutter/material.dart';

final _searchFieldController = TextEditingController(text: '');

class SearchTopPart extends StatefulWidget {
  SearchTopPart();

  @override
  _SearchTopPartState createState() => _SearchTopPartState();
}

class _SearchTopPartState extends State<SearchTopPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.all(
              Radius.elliptical(0.0, 0.0),
            ),
            child: TextField(
              controller: _searchFieldController,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                //prefixText: 'Search 2',
                //suffix: PopUpMenuButtonFilter(),
                hintText: 'Search',

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 15.0,
                ),
                border: InputBorder.none,
                suffixIcon: Material(
                  elevation: 0.0,
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5.0, 5.0),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                ),
                prefixIcon: Material(
                  elevation: 0.0,
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5.0, 5.0),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.filter_center_focus,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
