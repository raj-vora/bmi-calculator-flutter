import 'dart:math';

class CalculatorBrain {
  final int height, weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi < 15){
        return 'Very severely underweight';
    } else if(_bmi < 16){
        return 'Severely underweight';
    } else if(_bmi < 18.5){
        return 'Underweight';
    } else if(_bmi < 25){
        return 'Normal (healthy weight)';
    } else if(_bmi < 30){
        return 'Overweight';
    } else if(_bmi < 35){
        return 'Obese Class I (Moderately obese)';
    } else if(_bmi < 40){
        return 'Obese Class II (Severely obese)';
    } else {
        return 'Obese Class III (Very severely obese)';
    }
  }

  String getInterpretation() {
    if(_bmi < 15) {
      return 'Your body weight is too less than normal body weight. Consume food with high calorie count.';
    } else if(_bmi < 16) {
      return 'Your body weight is a bit less than normal body weight. You can eat a lot more.';
    } else if(_bmi < 18.5) {
      return 'Your body weight is less than normal body weight. You can eat a bit more.';
    } else if(_bmi < 25) {
      return 'You have a normal body weight. Good Job!';
    } else if(_bmi < 30) {
      return 'Your body weight is higher than normal body weight. Try to exercise more.';
    } else if(_bmi < 35) {
      return 'Your body weight is a bit higher than normal body weight. Try to exercise a bit more.';
    } else if(_bmi < 40) {
      return 'Your body weight is a lot higher than normal body weight. Try to exercise a lot more.';
    } else {
      return 'Your body weight is much higher than normal body weight. Try to exercise more, eat a lot less.';
    }
  }  
}