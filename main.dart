import 'caculator.dart';
import 'input_utils.dart';

void main(List<String> args) {
  Calculator calculator = new Calculator();
  InputUtil inputUtil = new InputUtil();

  var userValueOne = inputUtil.requestInt("Enter your first numer:");
  if (userValueOne == null) {
    print("Program terminated");
  } else {
    print("You entered => ${userValueOne}");
  }
}
