//27
class Company {
  String name;
  double baseSalary;

  Company(this.name, this.baseSalary);

  double calculateMonthlySalary() {
    return baseSalary;
  }
}

class Manager extends Company {
  double bonus;

  Manager(String name, double baseSalary, this.bonus)
      : super(name, baseSalary);

  @override
  double calculateMonthlySalary() {
    return baseSalary + bonus;
  }
}

class Developer extends Company {
  double overtimePay;

  Developer(String name, double baseSalary, this.overtimePay)
      : super(name, baseSalary);

  @override
  double calculateMonthlySalary() {
    return baseSalary + overtimePay;
  }
}

void main() {
  Company manager = Manager("Rahim", 60000, 15000);
  Company developer = Developer("Karim", 50000, 8000);

  print("Manager salary: ${manager.calculateMonthlySalary()}");
  print("Developer salary: ${developer.calculateMonthlySalary()}");
}
//28
class Guest {
  String name;
  String phone;

  Guest(this.name, this.phone);

  void displayInfo() {
    print("Guest Name: $name");
    print("Phone: $phone");
  }
}

class Room {
  int roomNumber;
  String type;
  bool _isAvailable = true;

  Room(this.roomNumber, this.type);

  bool get isAvailable => _isAvailable;

  void bookRoom() {
    if (_isAvailable) {
      _isAvailable = false;
      print("Room $roomNumber has been booked.");
    } else {
      print("Room $roomNumber is already booked.");
    }
  }

  void releaseRoom() {
    _isAvailable = true;
    print("Room $roomNumber is now available.");
  }
}

class Reservation {
  Guest guest;
  Room room;
  String date;

  Reservation(this.guest, this.room, this.date);

  void makeReservation() {
    if (room.isAvailable) {
      room.bookRoom();

      print("\nReservation successful!");
      print("Guest: ${guest.name}");
      print("Room: ${room.roomNumber}");
      print("Type: ${room.type}");
      print("Date: $date");
    } else {
      print("Reservation failed. Room is unavailable.");
    }
  }

  void cancelReservation() {
    room.releaseRoom();
    print("Reservation cancelled.");
  }
}

void main() {
  Guest guest = Guest("Zannat", "017XXXXXXXX");

  Room room = Room(101, "Deluxe");

  Reservation reservation =
      Reservation(guest, room, "17 September 2026");

  reservation.makeReservation();

  reservation.cancelReservation();
}
//29
class Book {
  String title;
  String author;
  String id;
  bool _isIssued = false;

  Book(this.title, this.author, this.id);

  bool get isIssued => _isIssued;

  void issueBook() {
    _isIssued = true;
  }

  void returnBook() {
    _isIssued = false;
  }

  void displayInfo() {
    print("ID: $id");
    print("Title: $title");
    print("Author: $author");
    print("Status: ${_isIssued ? "Issued" : "Available"}");
  }
}

class Member {
  String name;
  int memberId;

  Member(this.name, this.memberId);

  void displayInfo() {
    print("Member Name: $name");
    print("Member ID: $memberId");
  }
}

// Inheritance
class StudentMember extends Member {
  String department;

  StudentMember(String name, int memberId, this.department)
      : super(name, memberId);

  @override
  void displayInfo() {
    print("Student Name: $name");
    print("Member ID: $memberId");
    print("Department: $department");
  }
}

class Library {
  String name;
  List<Book> books = [];
  List<Member> members = [];

  Library(this.name);

  void addBook(Book book) {
    books.add(book);
  }

  void addMember(Member member) {
    members.add(member);
  }

  void issueBook(String bookId, Member member) {
    for (Book book in books) {
      if (book.id == bookId) {
        if (!book.isIssued) {
          book.issueBook();
          print("${book.title} issued to ${member.name}.");
        } else {
          print("Book is already issued.");
        }
        return;
      }
    }

    print("Book not found.");
  }

  void returnBook(String bookId) {
    for (Book book in books) {
      if (book.id == bookId) {
        if (book.isIssued) {
          book.returnBook();
          print("${book.title} returned successfully.");
        } else {
          print("Book was not issued.");
        }
        return;
      }
    }

    print("Book not found.");
  }

  void displayBooks() {
    print("\nLibrary Books:");
    for (Book book in books) {
      book.displayInfo();
      print("----------------");
    }
  }
}

void main() {
  Library library = Library("Central Library");

  Book b1 = Book("Clean Code", "Robert C. Martin", "B101");
  Book b2 = Book("Java Basics", "James Gosling", "B102");

  StudentMember member =
      StudentMember("Zannat", 1, "CSE");

  library.addBook(b1);
  library.addBook(b2);
  library.addMember(member);

  member.displayInfo();

  library.displayBooks();

  library.issueBook("B101", member);

  library.displayBooks();

  library.returnBook("B101");

  library.displayBooks();
}
//30
abstract class Person {
  String name;

  Person(this.name);

  void displayInfo();
}

class Student extends Person {
  int id;
  double _cgpa;

  Student(String name, this.id, this._cgpa) : super(name);

  // Getter
  double get cgpa {
    return _cgpa;
  }

  // Setter
  set cgpa(double value) {
    if (value >= 0 && value <= 4.0) {
      _cgpa = value;
    } else {
      print("Invalid CGPA.");
    }
  }

  @override
  void displayInfo() {
    print("Student Name: $name");
    print("Student ID: $id");
    print("CGPA: $_cgpa");
  }
}

class Course {
  String courseCode;
  String courseName;
  double credit;

  Course(this.courseCode, this.courseName, this.credit);

  void displayCourse() {
    print("Course Code: $courseCode");
    print("Course Name: $courseName");
    print("Credit: $credit");
  }
}

class Enrollment {
  Student student;
  Course course;
  String grade;

  Enrollment(this.student, this.course, this.grade);

  void displayEnrollment() {
    print("\nEnrollment Information");
    print("----------------------");
    print("Student: ${student.name}");
    print("Student ID: ${student.id}");
    print("Course: ${course.courseName}");
    print("Course Code: ${course.courseCode}");
    print("Grade: $grade");
  }
}

void main() {
  // Creating student
  Student student = Student("Zannat", 101, 3.75);

  // Encapsulation through setter
  student.cgpa = 3.80;

  // Polymorphism
  Person person = student;
  person.displayInfo();

  // Creating courses
  Course course1 = Course("CSE101", "Object Oriented Programming", 3.0);
  Course course2 = Course("CSE202", "Database Management System", 3.0);

  print("\nCourse 1:");
  course1.displayCourse();

  print("\nCourse 2:");
  course2.displayCourse();

  // Enroll student in courses
  Enrollment enrollment1 =
      Enrollment(student, course1, "A");

  Enrollment enrollment2 =
      Enrollment(student, course2, "A-");

  enrollment1.displayEnrollment();
  enrollment2.displayEnrollment();
}