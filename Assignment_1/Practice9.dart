import 'dart:io';

void main() {
  print("Enter a string:");
  String text = stdin.readLineSync()!;

  String result = text.replaceAll(RegExp(r'\s+'), '');

  print("String without whitespaces: $result");
}