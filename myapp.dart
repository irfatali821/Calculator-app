import 'dart:io';

// Callback function type define kiya
typedef Operation = double Function(double a, double b);

// Callback ko use karne wala function
void calculate(double a, double b, Operation op) {
  print("Result: ${op(a, b)}");
}

void main() {
  // Callback functions
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => a / b;

  print("Simple Dart Calculator");
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);
  
  print("Choose: 1(+), 2(-), 3(*), 4(/)");
  String choice = stdin.readLineSync()!;

  // Choice ke mutabiq callback pass kiya
  switch (choice) {
    case '1':
      calculate(num1, num2, add);
      break;
    case '2':
      calculate(num1, num2, subtract);
      break;
    case '3':
      calculate(num1, num2, multiply);
      break;
    case '4':
      calculate(num1, num2, divide);
      break;
    default:
      print("Invalid choice");
  }
}