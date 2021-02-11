import 'package:flutter/material.dart';
import 'package:satuone/screens/items/search_text_field_1.dart';
import 'package:satuone/screens/items/choice_clip.dart';

class RanksTopPart extends StatefulWidget {
  final int house;
  
  final ValueChanged<String> listType;
  
  RanksTopPart({Key key, this.house, this.listType}) : super(key: key);

  @override
  _RanksTopPartState createState() => _RanksTopPartState(house);
}

class _RanksTopPartState extends State<RanksTopPart> {
  int house;
  _RanksTopPartState(this.house);

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
        _listTypeName1 = 'Overall';
        _listTypeChar1 = 'OVA';
        _listTypeName2 = 'Attendant';
        _listTypeChar2 = 'ATTEND';
        _listTypeName3 = 'Organizer';
        _listTypeChar3 = 'OGR';
        _listTypeName4 = 'Organization';
        _listTypeChar4 = 'ORG';

        break;
      case 2:
        _listTypeName1 = 'Organization';
        _listTypeChar1 = 'ORG';
        _listTypeName2 = 'Event';
        _listTypeChar2 = 'EVN';
        _listTypeName3 = 'Association';
        _listTypeChar3 = 'ASSOC';
        _listTypeName4 = 'Organization Data';
        _listTypeChar4 = 'ODT';

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
                  isSelected: _listType==_listTypeChar1? true:  false,
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
                  isSelected: _listType==_listTypeChar2? true:  false,
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
                  isSelected: _listType==_listTypeChar3? true:  false,
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
                  isSelected: _listType==_listTypeChar4? true:  false,
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
