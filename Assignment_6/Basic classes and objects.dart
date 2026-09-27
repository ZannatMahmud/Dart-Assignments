//1
class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
  }
}

void main() {
  Student s1 = Student("Zannat", 101, 3.75);

  s1.displayInfo();
}
//2
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea() {
    return length * width;
  }

  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Rectangle r = Rectangle(10, 5);

  print("Area: ${r.calculateArea()}");
  print("Perimeter: ${r.calculatePerimeter()}");
}
//3
class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void displayInfo() {
    print("Title: $title");
    print("Subtitle: $subtitle");
    print("Author: $author");
  }
}

void main() {
  Book b = Book(
    "Harry Potter",
    "The Philosopher's Stone",
    "J.K. Rowling",
  );

  b.displayInfo();
}
//4
class Car {
  Car.manual() {
    print("This is a manual car.");
  }

  Car.automatic() {
    print("This is an automatic car.");
  }
}

void main() {
  Car c1 = Car.manual();
  Car c2 = Car.automatic();
}
//5
class Customer {
  final String name;
  final int id;

  const Customer(this.name, this.id);

  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
  }
}

void main() {
  const Customer c = Customer("Zannat", 101);

  c.displayInfo();
}
//6
class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
    print("Current balance: $balance");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
      print("Current balance: $balance");
    } else {
      print("Insufficient balance.");
    }
  }
}

void main() {
  BankAccount account = BankAccount(5000);

  account.deposit(2000);
  account.withdraw(1500);
  account.withdraw(7000);
}
//7
class MathHelper {
  static int addition(int a, int b) {
    return a + b;
  }

  static int multiplication(int a, int b) {
    return a * b;
  }
}

void main() {
  print("Addition: ${MathHelper.addition(10, 20)}");
  print("Multiplication: ${MathHelper.multiplication(10, 20)}");
}
//8
class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Designation: $designation");
    print("Salary: $salary");
    print("------------------");
  }
}

void main() {
  List<Employee> employees = [
    Employee("Rahim", "Manager", 50000),
    Employee("Karim", "Developer", 40000),
    Employee("Nila", "Designer", 35000),
  ];

  for (Employee employee in employees) {
    employee.displayInfo();
  }
}