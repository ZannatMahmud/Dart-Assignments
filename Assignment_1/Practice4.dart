import 'dart:io';

void main() {
  print("Enter principal amount:");
  double p = double.parse(stdin.readLineSync()!);

  print("Enter time:");
  double t = double.parse(stdin.readLineSync()!);

  print("Enter rate:");
  double r = double.parse(stdin.readLineSync()!);

  double simpleInterest = (p * t * r) / 100;

  print("Simple Interest = $simpleInterest");
}