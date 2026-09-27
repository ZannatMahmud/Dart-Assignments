//15
abstract class Shape {
  double calculateArea();
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Square s = Square(5);

  print("Area of square: ${s.calculateArea()}");
}
//16
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is turned on.");
  }

  @override
  void turnOff() {
    print("Fan is turned off.");
  }
}

void main() {
  Fan fan = Fan();

  fan.turnOn();
  fan.turnOff();
}
//17
abstract interface class Playable {
  void play();
}

class Football implements Playable {
  @override
  void play() {
    print("Playing football.");
  }
}

class Cricket implements Playable {
  @override
  void play() {
    print("Playing cricket.");
  }
}

void main() {
  Playable f = Football();
  Playable c = Cricket();

  f.play();
  c.play();
}
//18
abstract interface class Flyable {
  void fly();
}

abstract interface class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is flying.");
  }

  @override
  void swim() {
    print("Duck is swimming.");
  }
}

void main() {
  Duck duck = Duck();

  duck.fly();
  duck.swim();
}
//19
abstract class Payment {
  double amount;

  Payment(this.amount);

  void pay();
}

class CashPayment extends Payment {
  CashPayment(double amount) : super(amount);

  @override
  void pay() {
    print("Paid $amount using cash.");
  }
}

class CardPayment extends Payment {
  CardPayment(double amount) : super(amount);

  @override
  void pay() {
    print("Paid $amount using card.");
  }
}

void main() {
  Payment p1 = CashPayment(1000);
  Payment p2 = CardPayment(2000);

  p1.pay();
  p2.pay();
}

