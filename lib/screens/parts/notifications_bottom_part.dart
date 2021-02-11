import 'package:flutter/material.dart';
import 'package:satuone/models/notification_model.dart';
import 'package:satuone/models/person_model.dart';
import 'package:satuone/models/organization_model.dart';
import 'package:satuone/screens/details/notifications_list_detail.dart';
import 'package:satuone/screens/forms/event_evaluation.dart';
import 'package:satuone/screens/items/coming_soon.dart';

class NotificationsBottomPart extends StatelessWidget {
  String _profileDp(i) {
    String _profileUsername = '';
    switch (dummyDataNotifications[i].notiProType) {
      case 1:
        return _profileUsername =
            dummyDataPersons[dummyDataNotifications[i].byProId - 1].avatarUrl;
        break;
      case 2:
        return _profileUsername =
            dummyDataOrganizations[dummyDataNotifications[i].byProId - 1]
                .avatarUrl;
        break;
      default:
    }
    return _profileUsername;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: dummyDataNotifications.length,
      itemBuilder: (context, i) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            subtitle: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 17.0,
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.purple,
                    backgroundImage: AssetImage(
                      _profileDp(i),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 206.0,
                    margin: EdgeInsets.only(left: 0.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _goTo(i),
                          ),
                        );
                      },
                      child: _contain(i),
                    ),
                  ),
                  SizedBox(
                    width: 1.0,
                  ),
                  Container(
                    width: 30.0,
                    child: Text(
                      '${dummyDataNotifications[i].updatedDatetimeNumber}' +
                          ' ${dummyDataNotifications[i].updatedDatetimeUnit}',
                      style: TextStyle(color: Colors.black54, fontSize: 8),
                    ),
                  ),
                  SizedBox(
                    width: 1.0,
                  ),
                  Container(
                    height: 35.0,
                    width: 45.0,
                    child: Image.asset(
                      dummyDataNotifications[i].notiImageUrl,
                      fit: BoxFit.cover,
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

  Widget _contain(i) {
    if (dummyDataNotifications[i].notiTypeId == 18) {
      return NotiConnectionRequest(i);
    } else if (dummyDataNotifications[i].notiTypeId == 22) {
      return NotiConnectionAchieved(i);
    } else if (dummyDataNotifications[i].notiTypeId == 31) {
      return NotiCommentOnSpeech(i);
    } else if (dummyDataNotifications[i].notiTypeId == 32) {
      return NotiReactionOnSpeech(i);
    } else if (dummyDataNotifications[i].notiTypeId == 33) {
      return NotiRecycleASpeech(i);
    } else if (dummyDataNotifications[i].notiTypeId == 48) {
      return NotiEventInvitation(i);
    } else if (dummyDataNotifications[i].notiTypeId == 93) {
      return NotiEventEvaluation(i);
    } else if (dummyDataNotifications[i].notiTypeId == 95) {
      return NotiGainPoint(i);
    } else if (dummyDataNotifications[i].notiTypeId == 34) {
      return NotiRequestEventOrganizer(i);
    } else if (dummyDataNotifications[i].notiTypeId == 73) {
      return NotiAchievement(i);
    }
    return null;
  }

  Widget _goTo(i) {
    if (dummyDataNotifications[i].notiTypeId == 18) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 22) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 31) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 32) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 33) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 48) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 93) {
      return EventEvaluation();
    } else if (dummyDataNotifications[i].notiTypeId == 95) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 34) {
      return ComingSoon();
    } else if (dummyDataNotifications[i].notiTypeId == 73) {
      return ComingSoon();
    }
    return null;
  }
}
