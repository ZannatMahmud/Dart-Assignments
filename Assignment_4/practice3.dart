import 'dart:io';

void main() {
  print("Enter expenses separated by space:");
  List<String> input = stdin.readLineSync()!.split(' ');

  List<double> expenses = input.map((e) => double.parse(e)).toList();

  double total = expenses.reduce((a, b) => a + b);

  print("Total expenses = $total");
}