import 'package:flutter/material.dart';
import 'package:satuone/models/notification_model.dart';
import 'package:satuone/models/person_model.dart';
import 'package:satuone/models/organization_model.dart';

const _notiUsernameStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w900,
  fontSize: 11,
);

const _notiDetailStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w100,
  fontSize: 11,
);


Widget _notificationsFrom(i) {
  String _profileUsername;
  switch (dummyDataNotifications[i].notiProType) {
    case 1:
       _profileUsername="${dummyDataPersons[dummyDataNotifications[i].byProId - 1].username} ";
      break;
    case 2:
       _profileUsername="${dummyDataOrganizations[dummyDataNotifications[i].byProId - 1].username} ";
      break;
    default:
  }
  if (dummyDataNotifications[i].notiProTotal == 1) {
    return NotificationsFromOneSubject(_profileUsername);
  } else {
    return NotificationsFromManySubjects(_profileUsername, i);
  }
}


class NotificationsFromOneSubject extends StatelessWidget {
  final _profileUsername;
  NotificationsFromOneSubject(this._profileUsername);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
       _profileUsername,
        style: _notiUsernameStyle,
      ),
    );
  }
}

class NotificationsFromManySubjects extends StatelessWidget {
  final i;
  final _profileUsername;
  NotificationsFromManySubjects(this._profileUsername, this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        _profileUsername +
            "& " +
            "${dummyDataNotifications[i].notiProTotal - 1} " +
            "others ",
        style: _notiUsernameStyle,
      ),
    );
  }
}

class NotiConnectionRequest extends StatelessWidget {
  final i;

  NotiConnectionRequest(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "request for: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "${dummyDataNotifications[i].notiDetDescr} " +
                    "relationship with you",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NotiConnectionAchieved extends StatelessWidget {
  final i;

  NotiConnectionAchieved(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "& you are now connected by: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "${dummyDataNotifications[i].notiDetDescr} " + "relation",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NotiCommentOnSpeech extends StatelessWidget {
  final i;

  NotiCommentOnSpeech(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "spoke: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetNew}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiReactionOnSpeech extends StatelessWidget {
  final i;

  NotiReactionOnSpeech(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "give you a star: ",
                overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiRecycleASpeech extends StatelessWidget {
  final i;

  NotiRecycleASpeech(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "recycle your speech: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiEventInvitation extends StatelessWidget {
  final i;

  NotiEventInvitation(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "invite you to attend in: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiEventEvaluation extends StatelessWidget {
  final i;

  NotiEventEvaluation(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "ask you to evaluate: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiGainPoint extends StatelessWidget {
  final i;

  NotiGainPoint(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "just gave you " +
                    "${dummyDataNotifications[i].notiDetNew} " +
                    "pts: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiRequestEventOrganizer extends StatelessWidget {
  final i;

  NotiRequestEventOrganizer(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            _notificationsFrom(i),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "appoint you as an organizer of: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}

class NotiAchievement extends StatelessWidget {
  final i;

  NotiAchievement(this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                "You just unlock a new achievement: ",
                //overflow: TextOverflow.ellipsis,
                style: _notiDetailStyle,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '"${dummyDataNotifications[i].notiDetDescr}"',
            overflow: TextOverflow.ellipsis,
            style: _notiDetailStyle,
          ),
        ),
      ],
    );
  }
}
