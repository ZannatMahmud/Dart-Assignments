num calculateArea([num length = 1, num width = 1]) {
  return length * width;
}

void main() {
  print("Area = ${calculateArea(5, 4)}");
}