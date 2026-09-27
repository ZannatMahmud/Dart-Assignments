import 'dart:io';

void main() async {
  File file = File('hello.txt');

  await file.writeAsString('\nFriend: John', mode: FileMode.append);

  print('Friend name added to hello.txt');
}