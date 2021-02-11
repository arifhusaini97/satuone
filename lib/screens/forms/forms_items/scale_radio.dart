import 'package:flutter/material.dart';
import 'package:satuone/screens/forms/forms_items/radio_without_label.dart';

class ScaleRadio extends StatefulWidget {
  final int _isRadioSelected;
  final int _number;
  final double _horiPadding;
  final double _width;

  ScaleRadio(
      this._isRadioSelected, this._number, this._horiPadding, this._width);

  @override
  _ScaleRadioState createState() =>
      _ScaleRadioState(_isRadioSelected, _number, _horiPadding, _width);
}

class _ScaleRadioState extends State<ScaleRadio> {
  int _isRadioSelected;
  final int _number;
  final double _horiPadding;
  final double _width;

  _ScaleRadioState(
      this._isRadioSelected, this._number, this._horiPadding, this._width);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 2),
              shrinkWrap: true,
              itemCount: _number,
              itemBuilder: (context, index) {
                return RadioWithoutLabel(
                  width: _width,
                  padding: EdgeInsets.symmetric(horizontal: _horiPadding),
                  value: index,
                  groupValue: _isRadioSelected,
                  onChanged: (int newValue) {
                    setState(() {
                      _isRadioSelected = newValue;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      //  Row(
      //   children: <RadioWithoutLabel>[
      //     RadioWithoutLabel(
      //       padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //       value: 1,
      //       groupValue: _isRadioSelected,
      //       onChanged: (int newValue) {
      //         setState(() {
      //           _isRadioSelected = newValue;
      //         });
      //       },
      //     ),
      //     RadioWithoutLabel(
      //       padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //       value: 2,
      //       groupValue: _isRadioSelected,
      //       onChanged: (int newValue) {
      //         setState(() {
      //           _isRadioSelected = newValue;
      //         });
      //       },
      //     ),
      //     RadioWithoutLabel(
      //       padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //       value: 3,
      //       groupValue: _isRadioSelected,
      //       onChanged: (int newValue) {
      //         setState(() {
      //           _isRadioSelected = newValue;
      //         });
      //       },
      //     ),
      //     RadioWithoutLabel(
      //       padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //       value: 4,
      //       groupValue: _isRadioSelected,
      //       onChanged: (int newValue) {
      //         setState(() {
      //           _isRadioSelected = newValue;
      //         });
      //       },
      //     ),
      //     RadioWithoutLabel(
      //       padding: const EdgeInsets.symmetric(horizontal: 5.0),
      //       value: 5,
      //       groupValue: _isRadioSelected,
      //       onChanged: (int newValue) {
      //         setState(() {
      //           _isRadioSelected = newValue;
      //         });
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
