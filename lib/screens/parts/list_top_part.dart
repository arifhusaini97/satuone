import 'package:flutter/material.dart';
import 'package:satuone/models/person_model.dart';
import 'package:satuone/screens/forms/register_organization.dart';

class ListTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopUpMenuButtonAccount();
  }
}

List<String> packages = [
  'Arifhusaini97',
  'New Organization(+)',
];

class PopUpMenuButtonAccount extends StatefulWidget {
  @override
  _PopUpMenuButtonAccountState createState() => _PopUpMenuButtonAccountState();
}

class _PopUpMenuButtonAccountState extends State<PopUpMenuButtonAccount> {
  var _accExist = true;
  var selectedAccountPackageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 0.0),
          child: Material(
            elevation: 5.0,
            child: Container(
              margin: EdgeInsets.only(left: 0.0),
              //decoration: BoxDecoration(color: Colors.blue),
              width: 230.0,
              height: 50.0,
              child: PopupMenuButton(
                onSelected: (index) {
                  setState(
                    () {
                      selectedAccountPackageIndex = index;
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          _containDp(_accExist),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            packages[selectedAccountPackageIndex],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0.0),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.purple,
                          backgroundImage:
                              AssetImage(dummyDataPersons[4].avatarUrl),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          packages[0],
                        ),
                      ],
                    ),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: Container(
                      margin: EdgeInsets.all(0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 0.0),
                        color: Colors.white,
                        textColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterOrganization(title: 'Create Organization',),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.person_add,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'New Organization',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    value: null,
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          child: Container(
            height: 50.0,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(
                Radius.elliptical(5.0, 5.0),
              ),
            ),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _containDp(_accExist) {
    switch (_accExist) {
      case true:
        return CircleAvatar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.purple,
          backgroundImage: AssetImage(dummyDataPersons[4].avatarUrl),
        );
        break;
      default:
        return Icon(
          Icons.person_add,
          color: Colors.purple,
        );
    }
  }
}
