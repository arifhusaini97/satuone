import 'package:flutter/material.dart';
import 'package:satuone/screens/login_page.dart';
import 'package:satuone/screens/rooms/Events.dart';
import 'package:satuone/screens/rooms/profile.dart';
import 'text_style.dart';

// const StagesRoute='/';
// const SearchRoute='/search';
// const ProfileRoute='/profile';
// const NotificationRoute='/notifications';
// const EventsRoute='/events';
// const RanksRoute='/ranks';
// const SettingsRoute='/lists';

    
const EventsRoute='/';
const EventDetailsRoute='/profile/event';
const PersonDetailsRoute='/profile/person';
const OrganizationDetailsRoute='/profile/organization';

class MyApp extends StatelessWidget {

   RouteFactory _routes() {
      return (settings){
        final Map <String, dynamic> arguments = settings.arguments;
        Widget screen;
        switch (settings.name){
          case EventsRoute: 
            screen = Events();
            break;
          case EventDetailsRoute: 
            screen = Profile(false, 3, arguments['id']);
            break;
          case PersonDetailsRoute:
            screen = Profile(false, 1, arguments['id']);
            break;
          case OrganizationDetailsRoute:
            screen = Profile(false, 2, arguments['id']);
            break;
          default:
            return null;
        }
        return MaterialPageRoute(builder: (BuildContext context) => screen);
      };
    }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      onGenerateRoute: _routes(),
      title: 'Satuone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ),
        primarySwatch: Colors.purple,
      ),
      home: LoginPage(title: 'Stages'),
    );
  }

  // RouteFactory _routes() {
  //     return (settings){
  //       final Map <String, dynamic> arguments = settings.arguments;
  //       Widget screen;
  //       switch (settings.name){
  //         case StagesRoute: 
  //           screen = Stages();
  //           break;
  //         // case SearchRoute: 
  //         //   screen = Search(arguments['id']);
  //         //   break;
  //         // case ProfileRoute: 
  //         //   screen = Profile();
  //         // break;
  //         // case NotificationsRoute: 
  //         //   screen = Notifications();
  //         // break;
  //         // case EventsRoute: 
  //         //   screen = Events();
  //         // break;
  //         // case RanksRoute: 
  //         //   screen = Ranks();
  //         // break;
  //         // case SettingsRoute: 
  //         //   screen = Settings();
  //         // break;
  //         default:
  //           return null;
  //       }
  //       return MaterialPageRoute(builder: (BuildContext context) => screen);
  //     };
  //   }
}