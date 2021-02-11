import 'package:flutter/material.dart';
import 'package:satuone/screens/items/search_text_field_1.dart';
import 'package:satuone/screens/items/choice_clip.dart';

class EventsTopPart extends StatefulWidget {
  final int house;
  
  final ValueChanged<String> listType;
  EventsTopPart({Key key, this.house, this.listType}) : super(key: key);

  @override
  _EventsTopPartState createState() => _EventsTopPartState(house);
}

class _EventsTopPartState extends State<EventsTopPart> {
  int house;
  _EventsTopPartState(this.house);

  var _listType;
  var _listTypeName1;
  var _listTypeChar1;
  var _listTypeName2;
  var _listTypeChar2;
  var _listTypeName3;
  var _listTypeChar3;
  var _listTypeName4;
  var _listTypeChar4;

  @override
  void initState() {
    super.initState();
    switch (house) {
      case 1:
        _listTypeName1 = 'Upcoming';
        _listTypeChar1 = 'UCM';
        _listTypeName2 = 'Followed';
        _listTypeChar2 = 'FLW';
        _listTypeName3 = 'My Event';
        _listTypeChar3 = 'MVN';
        _listTypeName4 = 'History';
        _listTypeChar4 = 'HTR';

        break;
      case 2:
        _listTypeName1 = 'My Event';
        _listTypeChar1 = 'MVN';
        _listTypeName2 = 'Followed';
        _listTypeChar2 = 'FLW';
        _listTypeName3 = 'History';
        _listTypeChar3 = 'HTR';
        _listTypeName4 = 'Event Data';
        _listTypeChar4 = 'EDT';

        break;
      case 3:
        break;
      case 4:
        break;
      default:
        return null;
    }
    _listType = _listTypeChar1;
  }

  @override
  Widget build(BuildContext context) {
    

    return Column(
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                child: ChoiceClip(
                  text: _listTypeName1,
                  isSelected: _listType == _listTypeChar1 ? true : false,
                ),
                onTap: () {
                  setState(() {
                    _listType = _listTypeChar1;
                    widget.listType(_listType);
                  });
                },
              ),
              InkWell(
                child: ChoiceClip(
                  text: _listTypeName2,
                  isSelected: _listType == _listTypeChar2 ? true : false,
                ),
                onTap: () {
                  setState(() {
                    _listType = _listTypeChar2;
                    widget.listType(_listType);
                  });
                },
              ),
              InkWell(
                child: ChoiceClip(
                  text: _listTypeName3,
                  isSelected: _listType == _listTypeChar3 ? true : false,
                ),
                onTap: () {
                  setState(() {
                    _listType = _listTypeChar3;
                    widget.listType(_listType);
                  });
                },
              ),
              InkWell(
                child: ChoiceClip(
                  text: _listTypeName4,
                  isSelected: _listType == _listTypeChar4 ? true : false,
                ),
                onTap: () {
                  setState(() {
                    _listType = _listTypeChar4;
                    widget.listType(_listType);
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        SearchTextField1(),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
