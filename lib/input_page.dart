import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_button.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/slider_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool? isMaleSelected = true;
  double height = 150;
  double weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.appName)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              ReusableCard(
                color: isMaleSelected == true
                    ? Constants.activeCardColor
                    : Constants.inactiveCardColor,
                child: const IconContent(
                  label: 'Male',
                  icon: FontAwesomeIcons.mars,
                ),
                onTap: () => updateColour(1),
              ),
              ReusableCard(
                color: isMaleSelected == false
                    ? Constants.activeCardColor
                    : Constants.inactiveCardColor,
                child: const IconContent(
                  label: 'Female',
                  icon: FontAwesomeIcons.venus,
                ),
                onTap: () => updateColour(2),
              ),
            ],
          ),
          ReusableCard(
            color: Constants.activeCardColor,
            child: SliderContent(
              value: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ),
          Row(
            children: [
              ReusableCard(
                color: Constants.activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Weight',
                      style: Constants.labelTextStyle,
                    ),
                    Text(
                      '${weight.round()}',
                      style: Constants.numberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(
                          child: const Icon(FontAwesomeIcons.minus),
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        CustomButton(
                          child: const Icon(FontAwesomeIcons.plus),
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ReusableCard(
                color: Constants.activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Age',
                      style: Constants.labelTextStyle,
                    ),
                    Text(
                      '$age',
                      style: Constants.numberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(
                          child: const Icon(FontAwesomeIcons.minus),
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        CustomButton(
                          child: const Icon(FontAwesomeIcons.plus),
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              final calc = Calculator(height: height.toInt(), weight: weight.toInt());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    resultText: calc.calculateBMI(),
                    bmiResult: calc.getResult(),
                    descriptionText: calc.getDescription(),
                  ),
                ),
              );
            },
            child: Container(
              color: Constants.buttonColor,
              padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
              height: Constants.heightButton,
              width: double.infinity,
              child: Center(
                  child: Text(
                'Calculate'.toUpperCase(),
                style: Constants.buttonLabelTextStyle,
              )),
            ),
          ),
        ],
      ),
    );
  }

  void updateColour(int gender) {
    setState(() {
      isMaleSelected = gender == 1 ? true : false;
    });
  }
}
