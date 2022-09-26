import 'dart:io';

class InputUtil {
  int? requestInt(String msg, {bool persist: true}) {
    var toReturn = null;

    if (persist) {
// use while loop

      while (persist) {
        try {
          print("Enter (q) to quit the program");
          print(msg);
          var value = stdin.readLineSync();
          if (value == "q" || value == "quit") {
            print("Thanks for using this program");
            break;
          } else {
            toReturn = int.parse(value!);
          }
          break;
        } on FormatException {
          print("Error Report, Please try again.");
          continue;
        }
      }
    } else {
      // run code once (don't use while loop)
      try {
        print(msg);
        var value = stdin.readLineSync();
        toReturn = int.parse(value!);
      } on FormatException {
        print("Error Report, You entered a wrong value, Exiting Program.");
      }
    }

    return toReturn;
  }
}
