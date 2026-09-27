//20
extension Capitalize on String {
  String toCapitalized() {
    if (isEmpty) {
      return this;
    }

    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

void main() {
  String text = "hello world";

  print(text.toCapitalized());
}
//21
enum OrderStatus {
  pending,
  shipped,
  delivered
}

void showMessage(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print("Your order is pending.");
      break;

    case OrderStatus.shipped:
      print("Your order has been shipped.");
      break;

    case OrderStatus.delivered:
      print("Your order has been delivered.");
      break;
  }
}

void main() {
  showMessage(OrderStatus.pending);
  showMessage(OrderStatus.shipped);
  showMessage(OrderStatus.delivered);
}
//22
mixin LoggerMixin {
  void logMessage(String message) {
    print("[LOG] $message");
  }
}

class User with LoggerMixin {
  String name;

  User(this.name);

  void login() {
    logMessage("$name logged in.");
  }
}

class Product with LoggerMixin {
  String name;

  Product(this.name);

  void addProduct() {
    logMessage("$name added.");
  }
}

void main() {
  User user = User("Zannat");
  Product product = Product("Laptop");

  user.login();
  product.addProduct();
}
//23
class Document {
  String title;

  Document(this.title);
}

mixin Printable on Document {
  void display() {
    print("Document Title: $title");
  }
}

class Invoice extends Document with Printable {
  Invoice(String title) : super(title);
}

class Report extends Document with Printable {
  Report(String title) : super(title);
}

void main() {
  Invoice invoice = Invoice("Invoice #101");
  Report report = Report("Annual Report");

  invoice.display();
  report.display();
}
//24
class Box<T> {
  T data;

  Box(this.data);

  void display() {
    print("Data: $data");
  }
}

void main() {
  Box<int> intBox = Box<int>(100);
  Box<String> stringBox = Box<String>("Hello");
  Box<double> doubleBox = Box<double>(25.5);

  intBox.display();
  stringBox.display();
  doubleBox.display();
}
//25
bool isEqual<T>(T a, T b) {
  return a == b;
}

void main() {
  print(isEqual<int>(10, 10));
  print(isEqual<String>("Hello", "Hello"));
  print(isEqual<double>(5.5, 6.5));
}
//26
T findLargest<T extends num>(T a, T b) {
  return a >= b ? a : b;
}

void main() {
  print(findLargest<int>(10, 20));
  print(findLargest<double>(15.5, 12.5));
}

