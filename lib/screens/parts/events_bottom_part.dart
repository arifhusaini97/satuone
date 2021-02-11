import 'package:flutter/material.dart';
import 'package:satuone/models/event_model.dart';
import 'package:satuone/my_app.dart';
import 'package:satuone/screens/rooms/events.dart';

class EventsBottomPart extends StatelessWidget {
  final int house;

  EventsBottomPart(this.house);

  String eventDate;
  String eventDpProfile;
  String eventFullname;
  String eventDay;
  String eventStartTime;
  String eventEndTime;
  String organizationUsername;

  int _containItemCount(_myList) {
    switch (_myList) {
      default:
        return dummyDataEvents.length;
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
          _containEventInit(_myList, i),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(0.0),
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
                            eventDate,
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        height: 35.0,
                        width: 35.0,
                        child: Image.asset(
                          eventDpProfile,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40.0,
                        child: InkWell(
                          onTap: () => _containTap(_myList, context, i),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        eventFullname,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    eventDay + ' : ',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    eventStartTime,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    ' - ',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Text(
                                    eventEndTime,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text(
                                    '@' + organizationUsername,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //decoration: BoxDecoration(color: Colors.purple),
                    width: 60.0,
                    child: Center(
                      child: _containButton(house, i),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _containEventInit(_myList, i) {
    switch (_myList) {
      case 'ORG':
        eventDate = dummyDataEvents[i].eventDate;
        eventDpProfile = dummyDataEvents[i].eventDpProfile;
        eventFullname = dummyDataEvents[i].eventFullname;
        eventDay = '${dummyDataEvents[i].eventDay}';
        eventStartTime = '${dummyDataEvents[i].eventStartTime}';
        eventEndTime = '${dummyDataEvents[i].eventEndTime}';
        organizationUsername = '${dummyDataEvents[i].organizationUsername}';
        break;
      default:
        eventDate = dummyDataEvents[i].eventDate;
        eventDpProfile = dummyDataEvents[i].eventDpProfile;
        eventFullname = dummyDataEvents[i].eventFullname;
        eventDay = '${dummyDataEvents[i].eventDay}';
        eventStartTime = '${dummyDataEvents[i].eventStartTime}';
        eventEndTime = '${dummyDataEvents[i].eventEndTime}';
        organizationUsername = '${dummyDataEvents[i].organizationUsername}';
        break;
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}

void _containTap(_myList, context, i) {
  switch (_myList) {
    case 'EVN':
      return _onEventTap(context, i);
      break;
    default:
      return _onEventTap(context, i);
      break;
  }
}

void _onEventTap(BuildContext context, int eventID) {
  Navigator.pushNamed(
    context,
    EventDetailsRoute,
    arguments: {"id": eventID},
  );
}

Widget _containButton(house, i) {
  switch (house) {
    case 1:
      return PopUpMenuButtonAttendantStatus(
        dummyDataEvents[i].eventAttendantStatus,
      );
      break;
    case 2:
      return Container(
        margin: EdgeInsets.all(0),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 0.0,
          ),
          color: Colors.purple,
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(null, null);
            // context,
            // MaterialPageRoute(
            //   builder: (context) => House(),
            // ),
            //);
          },
          child: Text(
            'Organize',
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      );
      break;
    case 3:
      return null;
      break;
    case 4:
      return null;
      break;
    default:
      return null;
  }
}

class PopUpMenuButtonAttendantStatus extends StatefulWidget {
  final int selectedAttendantStatusIndex;

  PopUpMenuButtonAttendantStatus(this.selectedAttendantStatusIndex);

  @override
  _PopUpMenuButtonAttendantStatusState createState() =>
      _PopUpMenuButtonAttendantStatusState(selectedAttendantStatusIndex);
}

class _PopUpMenuButtonAttendantStatusState
    extends State<PopUpMenuButtonAttendantStatus> {
  var selectedAttendantStatusIndex;

  _PopUpMenuButtonAttendantStatusState(this.selectedAttendantStatusIndex);

  List<String> attendantStatusButton;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    attendantStatusButton = [
      'Attend',
      'Maybe',
      'Confirm',
    ];
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        margin: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.grey[300],
              offset: new Offset(1.0, 2.0),
            )
          ],
          color: selectedAttendantStatusIndex == 0
              ? Colors.purple
              : Colors.red[600],
          borderRadius: BorderRadius.all(
            Radius.elliptical(2.0, 2.0),
          ),
        ),
        width: 60.0,
        height: 30.0,
        child: Row(
          children: <Widget>[
            PopupMenuButton(
              // initialValue: (index){
              //   initial=index;
              // },
              onSelected: (index) {
                setState(
                  () {
                    selectedAttendantStatusIndex = index;
                  },
                );
              },
              child: //_buildChild(),
                  Container(
                width: 60.0,
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      attendantStatusButton[selectedAttendantStatusIndex],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                PopupMenuItem(
                  child: Text(
                    'Cancel',
                  ),
                  value: 0,
                ),
                PopupMenuItem(
                  child: Text(
                    attendantStatusButton[1],
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text(
                    attendantStatusButton[2],
                  ),
                  value: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
