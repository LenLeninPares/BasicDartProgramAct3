import "dart:io";
import "dart:math";

double numInput() {
  print("Enter the number for operation: ");
  double myNumber = double.parse(stdin.readLineSync()!);
  return myNumber;
}

String operandChoice() {
  print("Enter the operand choose: '+','-','*','/': ");
  String operandInput = stdin.readLineSync()!;
  return operandInput;
}

void main() {
  double num1 = numInput();
  double num2 = numInput();
  String choice = operandChoice();
  double answer = 0.0;

  if (choice == '+') {
    answer = num1 + num2;
    print("${num1} ${choice} ${num2} = ${answer}");
  } else if (choice == '-') {
    answer = num1 - num2;
    print("${num1} ${choice} ${num2} = ${answer}");
  } else if (choice == '*') {
    answer = num1 * num2;
    print("${num1} ${choice} ${num2} = ${answer}");
  } else if (choice == '/') {
    if (num2 == 0) {
      print("Error: Division by zero is not allowed!");
    } else {
      answer = num1 / num2;
      print("${num1} ${choice} ${num2} = ${answer}");
    }
  } else {
    print('Invalid input, plese review your input');
  }
  print("Thank you for using the calculator..");
}
