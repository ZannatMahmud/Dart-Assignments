import 'dart:io';
import 'dart:math';

num calculatePower(num base, num exponent) {
  return pow(base, exponent);
}

void main() {
  print("Enter base:");
  num base = num.parse(stdin.readLineSync()!);

  print("Enter exponent:");
  num exponent = num.parse(stdin.readLineSync()!);

  print("Result = ${calculatePower(base, exponent)}");
}