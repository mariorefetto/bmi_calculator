import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.descriptionText,
  });

  final String bmiResult;
  final String resultText;
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.appName),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Your Result',
            style: Constants.titleTextStyle,
          ),
          ReusableCard(
            color: Constants.activeCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20.0),
                Text(bmiResult, style: Constants.resultTextStyle),
                Text(resultText, style: Constants.bmiTextStyle),
                Text(
                  descriptionText,
                  style: Constants.bodyTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Constants.buttonColor,
              padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
              height: Constants.heightButton,
              width: double.infinity,
              child: Center(
                  child: Text(
                'Re-Calculate'.toUpperCase(),
                style: Constants.buttonLabelTextStyle,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
