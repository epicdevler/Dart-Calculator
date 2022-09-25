import 'caculator.dart';

void main(List<String> args) {
  Calculator calculator = new Calculator();

  int firstValue = calculator.requestData("Enter a value:");
  int secondValue = calculator.requestData("Enter another value:");
  String operator =
      calculator.requestOperator("Select operation type (+, -, *, /):");

  print(
      "${firstValue} ${operator} ${secondValue} = ${calculator.add(firstValue, secondValue)}");
}
