import 'package:flutter/material.dart';
import 'package:satuone/models/activity_role_tentative_model.dart';

class ActivityRoleTentative extends StatelessWidget {
  final int house;
  ActivityRoleTentative(this.house);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          EntryItem(dummyDataActivity[index]),
      itemCount: dummyDataActivity.length,
    );
  }
}

class EntryItem extends StatelessWidget {
  final EntryModel entry;

  EntryItem(this.entry);

  int positionTemp = 0;
  int competitionTemp = 0;

  Widget _buildTiles(EntryModel root) {
    if (root.children.isEmpty)
      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  _titleFunction(root.icon),
                  Row(
                    children: <Widget>[
                      Icon(
                        root.icon,
                        size: 15.0,
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 275,
                        child: Text(
                          root.title,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    return Card(
      child: ExpansionTile(
        key: PageStorageKey<EntryModel>(root),
        title: Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                root.title,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        subtitle: Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                root.subtitle,
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        children: root.children.map(_buildTiles).toList(),
      ),
    );
  }

  Widget _titleFunction(icon) {
    int iconNumb = 0;
    if (icon == Icons.supervised_user_circle) {
      iconNumb = 1;
    } else if (icon == Icons.event_seat) {
      iconNumb = 2;
    }

    switch (iconNumb) {
      case 1:
        if (positionTemp == 0) {
          positionTemp = 1;
          competitionTemp = 0;
          return Card(
                    color: Colors.purple[300],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Positions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          // _function(root.icon),
                        ],
                      ),
                    ),
                  );
        }
        break;
      case 2:
        if (competitionTemp == 0) {
          competitionTemp = 1;
          positionTemp = 0;
          return Card(
                    color: Colors.purple[300],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Competitions & Exhibitions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          // _function(root.icon),
                        ],
                      ),
                    ),
                  );
        }
        break;
    }
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
