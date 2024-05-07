import 'package:flutter/material.dart';

class Constants {
  static const String appName = 'BMI Calculator';
  static const Color activeCardColor = Color(0xFF1D1E33);
  static const Color inactiveCardColor = Color(0xFF111328);
  static const Color activeSliderColor = Color(0xFFEB1555);
  static const Color inactiveSliderColor = Color(0xFF8D8E98);
  static const Color buttonColor = Color(0xFFEB1555);
  static const Color floatingButtonColor = Color(0xFF4C4F5E);
  static const double heightContainer = 80.0;
  static const double heightButton = 80.0;

  static const TextStyle labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8d8E98));
  static const TextStyle numberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
  static const TextStyle buttonLabelTextStyle =
      TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold);
  static const TextStyle titleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
  static const TextStyle resultTextStyle =
      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w900, color: Colors.green);
  static const TextStyle bmiTextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900);
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 22.0,
  );
}
