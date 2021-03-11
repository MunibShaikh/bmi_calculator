import 'dart:math';

class CalcFunc {
  CalcFunc({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over weight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String getOpinion() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight, Good job!';
    } else {
      return 'You have lower than normal. You can eat bit more';
    }
  }
}
