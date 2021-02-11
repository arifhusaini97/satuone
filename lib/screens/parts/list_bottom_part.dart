import 'package:flutter/material.dart';
import 'package:satuone/models/list_bottom_part_model.dart';

class ListBottomPart extends StatefulWidget {
  ListBottomPart();

  @override
  _ListBottomPartState createState() => _ListBottomPartState();
}

class _ListBottomPartState extends State<ListBottomPart> {
  _ListBottomPartState();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Divider(
          height: 0.0,
          color: Colors.black54,
          indent: 10.0,
          endIndent: 10.0,
        ),
        
        SizedBox(
          height: 10.0,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) =>
              EntryList(lists[index]),
          itemCount: lists.length,
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Material(
              elevation: 0.0,
              borderRadius: BorderRadius.all(
                Radius.elliptical(5.0, 5.0),
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  height: 65.0,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.lock,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class EntryList extends StatelessWidget {
  final EntryListModel entry;

  EntryList(this.entry);

  Widget _buildTiles(EntryListModel root) {
    if (root.children.isEmpty)
      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Material(
              elevation: 0.0,
              borderRadius: BorderRadius.all(
                Radius.elliptical(5.0, 5.0),
              ),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  height: 65.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            root.icon,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            width: 275,
                            child: Text(
                              root.title,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    return Card(
      child: ExpansionTile(
        key: PageStorageKey<EntryListModel>(root),
        title: Container(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    root.icon,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    root.title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        children: root.children.map(_buildTiles).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
