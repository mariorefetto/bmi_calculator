import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: Constants.heightContainer,
        ),
        const SizedBox(height: 15.0),
        Text(
          label,
          style: Constants.labelTextStyle,
        ),
      ],
    );
  }
}
