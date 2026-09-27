import 'dart:io';

void main() async {
  File file = File('hello.txt');

  await file.writeAsString('Zannat Mahmud');

  print('Name added to hello.txt');
}