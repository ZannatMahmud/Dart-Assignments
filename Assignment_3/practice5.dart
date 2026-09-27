import 'dart:io';
import 'dart:math';

double calculateArea(double radius) {
  return pi * radius * radius;
}

void main() {
  print("Enter radius:");
  double radius = double.parse(stdin.readLineSync()!);

  print("Area of circle = ${calculateArea(radius)}");
}