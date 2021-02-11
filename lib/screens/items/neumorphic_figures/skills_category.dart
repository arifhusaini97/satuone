import 'package:flutter/material.dart';
import 'package:satuone/screens/items/quotient_card.dart';
import 'package:satuone/screens/items/neumorphic_figures/categories_row.dart';
import 'package:satuone/screens/items/neumorphic_figures/pie_chart_view.dart';

class SkillsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(193, 214, 233, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
                  child: Column(children: <Widget>[
            //    Spacer(),
            SizedBox(
              height: height * 0.43,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: height * 0.075),
                    Text(
                      "Team Skills",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Expanded(
                      child: Row(children: <Widget>[
                        CategoriesRow(),
                        PieChartView(),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(child: QuotientCard()),
          ]),
        ),
      ),
    );
  }
}
