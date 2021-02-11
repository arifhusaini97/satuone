import 'package:flutter/material.dart';
import 'package:satuone/screens/items/neumorphic_figures/pie_chart.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        for(var category in kCategory)
        SkillsCategory(text: category.name, index: kCategory.indexOf(category)),
      ]),
    );
  }
}

class SkillsCategory extends StatelessWidget {
  const SkillsCategory({
    Key key, @required this.index, @required this.text,
  }) : super(key: key);

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        // crossAxisAlignment: WrapCrossAlignment.start,
        // alignment: WrapAlignment.start,
        children: <Widget>[
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kNeumorphicColors.elementAt(index % kNeumorphicColors.length),
          ),
        ),
        SizedBox(width: 12),
        Text(text.capitalize()),
      ]),
    );
  }
}

extension StringExtension on String{
  String capitalize(){
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}