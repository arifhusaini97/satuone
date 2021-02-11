import 'package:flutter/material.dart';
import 'package:satuone/models/person_model.dart';
import 'package:satuone/models/organization_model.dart';
import 'package:satuone/my_app.dart';
import 'package:satuone/screens/rooms/ranks.dart';

class RanksBottomPart extends StatefulWidget {
  RanksBottomPart();

  @override
  _RanksBottomPartState createState() => _RanksBottomPartState();
}

class _RanksBottomPartState extends State<RanksBottomPart> {
  _RanksBottomPartState();

  String image;
  String username;
  String latestUpdatedNumber;
  String latestUpdatedUnit;
  String points;

  int _containItemCount(_myList) {
    switch (_myList) {
      case 'ORG':
        return dummyDataOrganizations.length;
        break;
      default:
        return dummyDataPersons.length;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    String _myList = '${ParentProvider.of(context).myList}';
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _containItemCount(_myList),
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          _containRankInit(_myList, i),
          ListTile(
            subtitle: Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () => _containTap(_myList, context, i),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          child: Center(
                            child: Text(
                              '${i + 1}',
                              style: Theme.of(context).textTheme.body1,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        CircleAvatar(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.purple,
                          backgroundImage: AssetImage(image),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          username,
                          style: Theme.of(context).textTheme.title,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.brightness_1,
                          size: 5.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          latestUpdatedNumber,
                          style: Theme.of(context).textTheme.body1,
                        ),
                        SizedBox(
                          width: 2.5,
                        ),
                        Text(
                          latestUpdatedUnit,
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50.0,
                      child: Center(
                        child: Text(
                          points,
                          style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _containRankInit(_myList, i) {
    switch (_myList) {
      case 'ORG':
        image = dummyDataOrganizations[i].avatarUrl;
        username = dummyDataOrganizations[i].username;
        latestUpdatedNumber =
            '${dummyDataOrganizations[i].latestUpdatedNumber}';
        latestUpdatedUnit = dummyDataOrganizations[i].latestUpdatedUnit;
        points = '${dummyDataOrganizations[i].points}';
        break;
      default:
        image = dummyDataPersons[i].avatarUrl;
        username = dummyDataPersons[i].username;
        latestUpdatedNumber = '${dummyDataPersons[i].latestUpdatedNumber}';
        latestUpdatedUnit = dummyDataPersons[i].latestUpdatedUnit;
        points = '${dummyDataPersons[i].points}';
        break;
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }

  void _containTap(_myList, context, i) {
    switch (_myList) {
      case 'ORG':
        return _onOrganizationTap(context, i);
        break;
      default:
        return _onPersonTap(context, i);
        break;
    }
  }
}

void _onOrganizationTap(BuildContext context, int organizationID) {
  Navigator.pushNamed(
    context,
    OrganizationDetailsRoute,
    arguments: {"id": organizationID},
  );
}

void _onPersonTap(BuildContext context, int personID) {
  Navigator.pushNamed(
    context,
    PersonDetailsRoute,
    arguments: {"id": personID},
  );
}
