import 'package:flutter/material.dart';

final _searchFieldController = TextEditingController(text: '');

class SearchTextField2 extends StatelessWidget {
  SearchTextField2();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
          child: Material(
            elevation: 0.0,
            borderRadius: BorderRadius.all(
              Radius.elliptical(5.0, 5.0),
            ),
            child: TextField(
              controller: _searchFieldController,
              decoration: InputDecoration(
                hintText: 'Registered Undered',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(30),
                // ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
