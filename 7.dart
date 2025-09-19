// ------------------- EXCEPTIONS -------------------

// Task 7.1: Handling Division by Zero
void divide(int a, int b) {
  try {
    var result = a ~/ b;
    print("Result: $result");
  } on IntegerDivisionByZeroException {
    print("Error: Cannot divide by zero.");
  } catch (e) {
    print("An unexpected error occurred: $e");
  }
}

// Task 7.2: Handling Index Out of Bounds
void printListElement(List list, int index) {
  try {
    print("Element at $index: ${list[index]}");
  } on RangeError {
    print("Error: Invalid index.");
  }
}

// Task 7.3: Catching FormatException
void parseAge(String input) {
  try {
    int age = int.parse(input);
    print("Your age is $age");
  } on FormatException {
    print("Error: Invalid number format.");
  }
}

// Task 7.4: Custom Exceptions
class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String input) {
  if (input.isEmpty) {
    throw InvalidInputException("Input cannot be empty!");
  }
  print("Processed: $input");
}

// Task 7.5: Using the finally block
void readDatabase() {
  try {
    print("Reading data from database...");
    throw Exception("Database read error!");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Database connection closed.");
  }
}

// ------------------- MAIN FUNCTION -------------------
void main() {
  print("=== Task 7.1: Division by Zero ===");
  divide(10, 2);
  divide(10, 0);

  print("\n=== Task 7.2: Index Out of Bounds ===");
  printListElement([1, 2, 3], 1);
  printListElement([1, 2, 3], 5);

  print("\n=== Task 7.3: Catching FormatException ===");
  parseAge("25");
  parseAge("abc");

  print("\n=== Task 7.4: Custom Exceptions ===");
  try {
    processText("Hello");
    processText("");
  } catch (e) {
    print(e);
  }

  print("\n=== Task 7.5: Finally Block ===");
  readDatabase();
}
