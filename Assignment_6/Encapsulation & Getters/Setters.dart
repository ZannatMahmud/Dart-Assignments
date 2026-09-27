//9
class Temperature {
  double _temp = 0;

  // Setter: accepts Celsius
  set temp(double celsius) {
    _temp = celsius;
  }

  // Getter: returns Fahrenheit
  double get temp {
    return (_temp * 9 / 5) + 32;
  }
}

void main() {
  Temperature t = Temperature();

  t.temp = 25; // Celsius

  print("Temperature in Fahrenheit: ${t.temp}");
}
//10
class BankAccount {
  double _balance = 0;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Balance cannot be negative.");
    }
  }

  double get balance {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount();

  account.balance = 5000;
  print("Balance: ${account.balance}");

  account.balance = -1000;
  print("Balance: ${account.balance}");
}

