import 'dart:math';

class Calculator {
  Calculator({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Sottopeso';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Intervallo normale';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Preobeso';
    } else if (_bmi >= 30 && _bmi < 35) {
      return 'Obeso classe I';
    } else if (_bmi >= 35 && _bmi < 40) {
      return 'Obeso classe II';
    } else {
      return 'Obeso classe III';
    }
  }

  String getDescription() {
    if (_bmi < 18.5) {
      return 'Hai un peso corporeo inferiore alla media. Puoi mangiare un po\' di più';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Hai un peso corporeo normale. Ottimo lavoro';
    } else {
      return 'Hai un peso corporeo superiore alla media. Prova a fare più esercizio';
    }
  }
}
