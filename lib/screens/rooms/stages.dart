import 'package:flutter/material.dart';
import 'package:satuone/models/stages_model.dart';
import 'package:satuone/screens/items/speaks.dart';

class Stages extends StatefulWidget {
  Stages();

  @override
  _StagesState createState() => _StagesState();
}

class _StagesState extends State<Stages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView.builder(
        itemCount: speaks.length,
        itemBuilder: (BuildContext context, int index) {
          Map speak = speaks[index];
          return Speaks(
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
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: (){},
      ),
    );
  }
}
