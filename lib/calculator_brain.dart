import 'dart:math';

class ClaculatorBrain {
  final int height;
  final int weight;

  double _bmi;
  ClaculatorBrain({this.height, this.weight});

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return ' Yoy have a higher than normal body weight. Try to excercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.Good job!';
    } else {
      return ' You have a lower than mormal body weight. You can eat a bit more.';
    }
  }
}
