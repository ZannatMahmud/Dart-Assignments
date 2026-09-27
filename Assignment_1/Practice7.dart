import 'dart:io';

void main() {
  print("Enter first integer:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second integer:");
  int b = int.parse(stdin.readLineSync()!);

  int quotient = a ~/ b;
  int remainder = a % b;

  print("Quotient = $quotient");
  print("Remainder = $remainder");
}