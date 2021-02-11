import 'package:flutter/material.dart';

class ChoiceClip extends StatefulWidget {
  final String text;
  final bool isSelected;

  ChoiceClip({this.text, this.isSelected});

  @override
  _ChoiceClipState createState() => _ChoiceClipState();
}

class _ChoiceClipState extends State<ChoiceClip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 75.0,
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: Colors.purple.withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.elliptical(2.0, 2.0),
              ),
            )
          : null,
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
