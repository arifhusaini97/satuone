import 'dart:math';

import 'package:flutter/material.dart';

class PieChart extends CustomPainter {
  PieChart({@required this.categories, @required this.width});

  final List<Category> categories;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    double total = 0;
    categories.forEach((exp) => total += exp.amount);

    double startRadian = - pi/2;

    for (var index = 0; index < categories.length; index++) {
      final currentCategory = categories.elementAt(index);
      final sweepRadian = currentCategory.amount / total * 2 * pi;
      paint.color = kNeumorphicColors.elementAt(index % categories.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class Category {
  Category(this.name, {@required this.amount});
  final String name;
  final double amount;
}

final kCategory = [
  Category('Communication', amount: 30),
  Category('Focus', amount: 10),
  Category('Fair Contribution', amount: 5),
  Category('Support Others', amount: 8),
  Category('Diversity', amount: 9),
  Category('Leadership', amount: 20),
  Category('Systematic', amount: 8),
  Category('Fun', amount: 10),
];

final kNeumorphicColors = [
  Color.fromRGBO(82, 98, 255, 1),
  Color.fromRGBO(46, 198, 255, 1),
  Color.fromRGBO(123, 201, 82, 1),
  Color.fromRGBO(255, 171, 67, 1),
  Color.fromRGBO(255, 91, 57, 1),
  Color.fromRGBO(139, 135, 130, 1),
  Color.fromRGBO(57, 17, 114, 1),
  Color.fromRGBO(0, 63, 142, 1),
];
