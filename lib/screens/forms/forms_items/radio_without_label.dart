import 'package:flutter/material.dart';


class RadioWithoutLabel extends StatelessWidget {
  const RadioWithoutLabel({
    this.padding,
    this.groupValue,
    this.value,
    this.onChanged,
    this.width
  });

  final EdgeInsets padding;
  final int groupValue;
  final int value;
  final Function onChanged;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) onChanged(value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Container(
              width: width,
              child: Radio<int>(
                materialTapTargetSize: MaterialTapTargetSize.padded,
                hoverColor: Colors.black,
                focusColor: Colors.black,
                groupValue: groupValue,
                value: value,
                onChanged: (int newValue) {
                  onChanged(newValue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}