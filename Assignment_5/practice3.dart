import 'dart:io';

void main() {
  Directory currentDirectory = Directory.current;

  print('Current working directory: ${currentDirectory.path}');
}