import 'dart:io';

void main() async {
  for (int i = 1; i <= 100; i++) {
    File file = File('file$i.txt');
    await file.writeAsString('This is file $i');
  }

  print('100 files created successfully.');
}