import 'dart:io';

void main() async {
  File file = File('students.csv');

  await file.writeAsString(
    'Name,Age,Address\n'
    'John,20,Dhaka\n'
    'Alex,21,Sylhet\n'
    'Emma,19,Chittagong\n',
  );

  print('Student data:');

  List<String> lines = await file.readAsLines();

  for (String line in lines) {
    print(line);
  }
}