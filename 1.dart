//Task 1.1: Car Class
class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void displayInfo() {
    print("Car Information: $year $make $model");
  }
}

//Task 1.2: Book Class
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

//Task 1.3: Student Class
class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) return 0.0;
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

//Task 1.4: BankAccount Class
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print(
      "Deposited: \$${amount.toStringAsFixed(2)}. "
      "New balance: \$${balance.toStringAsFixed(2)}",
    );
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print(
        "Error: Insufficient funds. Current balance: "
        "\$${balance.toStringAsFixed(2)}",
      );
    } else {
      balance -= amount;
      print(
        "Withdrew: \$${amount.toStringAsFixed(2)}. "
        "New balance: \$${balance.toStringAsFixed(2)}",
      );
    }
  }
}

//Task 1.5: Rectangle Class
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;
  double get perimeter => 2 * (width + height);
}

// Main Functions
void main() {
  print("=== Task 1.1: Car ");
  var myCar = Car("GM", "Damas", 2020);
  myCar.displayInfo();

  print("\n=== Task 1.2: Book ");
  var myBook = Book("Physics2", "Unknown", 1111);
  print("Book Title: ${myBook.title}");
  print("Author: ${myBook.author}");
  print("Pages: ${myBook.numberOfPages}");

  print("\n=== Task 1.3: Student ");
  var student = Student("Mecafano", 20, [85.5, 90.0, 79.5]);
  print("Student: ${student.name}, Age: ${student.age}");
  print("Average Grade: ${student.calculateAverageGrade()}");

  print("\n=== Task 1.4: BankAccount ");
  var account = BankAccount("12345", "Me", 1000.0);
  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000);

  print("\n=== Task 1.5: Rectangle ");
  var rect = Rectangle(10, 5);
  print("Rectangle Area: ${rect.area}");
  print("Rectangle Perimeter: ${rect.perimeter}");
}
