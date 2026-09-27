//11
class Person {
  void displayInfo() {
    print("This is a person.");
  }
}

class Teacher extends Person {
  @override
  void displayInfo() {
    print("This is a teacher.");
  }
}

class Student extends Person {
  @override
  void displayInfo() {
    print("This is a student.");
  }
}

void main() {
  Person p = Person();
  Person t = Teacher();
  Person s = Student();

  p.displayInfo();
  t.displayInfo();
  s.displayInfo();
}
//12
class Person {
  String name;

  Person(this.name);

  void displayInfo() {
    print("Name: $name");
  }
}

class Employee extends Person {
  double salary;

  Employee(String name, this.salary) : super(name);

  @override
  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

void main() {
  Employee e = Employee("Rahim", 45000);

  e.displayInfo();
}
//13
import 'dart:math';

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  Shape r = Rectangle(10, 5);
  Shape c = Circle(7);

  print("Rectangle area: ${r.area()}");
  print("Circle area: ${c.area()}");
}
//14
class Notification {
  String displayNotification() {
    return "New notification.";
  }
}

class EmailNotification extends Notification {
  @override
  String displayNotification() {
    return "You have a new email.";
  }
}

class SMSNotification extends Notification {
  @override
  String displayNotification() {
    return "You have a new SMS.";
  }
}

void main() {
  Notification n1 = EmailNotification();
  Notification n2 = SMSNotification();

  print(n1.displayNotification());
  print(n2.displayNotification());
}
