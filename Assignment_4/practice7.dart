void main() {
  Map<String, String> contacts = {
    "name": "John",
    "phone": "12345",
    "city": "Dhaka",
    "mail": "john@example.com",
    "home": "123456"
  };

  Map<String, String> result =
      Map.fromEntries(contacts.entries.where((entry) => entry.key.length == 4));

  print(result);
}