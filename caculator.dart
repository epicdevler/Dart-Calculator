import 'dart:io';

class Calculator {
  int requestData(String msg) {
    print(msg);
    var value = stdin.readLineSync();

    return int.tryParse(value!)!;
  }

  String requestOperator(String msg) {
    print(msg);
    var operator = stdin.readLineSync();
    return operator!;
  }

  int add(int valueOne, int valueTwo) {
    var result = valueOne + valueTwo;
    return result;
  }

  int substract(int valueOne, int valueTwo) {
    return valueOne - valueTwo;
  }

  int divide(int valueOne, int valueTwo) {
    return valueOne ~/ valueTwo;
  }

  int multiply(int valueOne, int valueTwo) {
    return valueOne * valueTwo;
  }
}
