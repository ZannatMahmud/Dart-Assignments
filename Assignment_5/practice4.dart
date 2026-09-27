import 'dart:io';

void main() async {
  File file = File('hello.txt');
  File copyFile = await file.copy('hello_copy.txt');

  print('File copied to: ${copyFile.path}');
}