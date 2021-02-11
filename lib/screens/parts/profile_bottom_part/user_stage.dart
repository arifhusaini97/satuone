import 'package:flutter/material.dart';
import 'package:satuone/models/stages_model.dart';
import 'package:satuone/screens/items/speaks.dart';

class UserStage extends StatelessWidget {
  UserStage();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: speaks.length,
        itemBuilder: (BuildContext context, int index) {
          Map speak = speaks[index];
          return speak['nickname']=="@arifhusaini97"?Speaks(
            dp: speak['dp'],
            name: speak['name'],
            nickname: speak['nickname'],
            time: speak['time'],
            text: speak['text'],
            img: speak['img'],
            totComment: speak['totComment'],
            totRecycle: speak['totRecycle'],
            totReact: speak['totReact'],
            totConfirm: speak['totConfirm'],
            totMaybe: speak['totMaybe'],
            type: speak['type'],
          ):SizedBox(height: 0.0,);
        },
      );
  }
}