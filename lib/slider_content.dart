import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class SliderContent extends StatelessWidget {
  const SliderContent({
    super.key,
    required this.value,
    this.onChanged,
  });
  final double value;
  final Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Height',
          style: Constants.labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value.toStringAsFixed(0),
              style: Constants.numberTextStyle,
            ),
            const Text(
              'cm',
              style: Constants.labelTextStyle,
            )
          ],
        ),
        Slider(
          min: 120,
          max: 220,
          activeColor: Constants.activeSliderColor,
          inactiveColor: Constants.inactiveSliderColor,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
