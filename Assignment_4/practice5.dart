void main() {
  List<String> friends = [
    "Alex",
    "John",
    "Anna",
    "Rahim",
    "Ayesha",
    "David",
    "Sakib"
  ];

  List<String> namesStartingWithA =
      friends.where((name) => name.toLowerCase().startsWith('a')).toList();

  print(namesStartingWithA);
}