// Task 3.1: Vehicle Hierarchy
class Vehicle {
  String make;
  String model;

  Vehicle(this.make, this.model);

  void display() {
    print("Vehicle: $make $model");
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String make, String model, this.numberOfDoors) : super(make, model);

  @override
  void display() {
    super.display();
    print("Doors: $numberOfDoors");
  }
}

// Task 3.2: Animal Sounds
class Animal {
  void makeSound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Task 3.3: Shape Hierarchy
class Shape {
  String color;
  Shape(this.color);
}

class Circle extends Shape {
  double radius;
  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double sideLength;
  Square(String color, this.sideLength) : super(color);
}

// Task 3.4: Employee and Manager
class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

// Task 3.5: Library Items
class LibraryItem {
  String title;
  int id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Item: $title (ID: $id)";
  }
}

class Book extends LibraryItem {
  String author;

  Book(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book: $title (ID: $id), Author: $author";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD: $title (ID: $id), Director: $director";
  }
}

// Main Function
void main() {
  print("=== Task 3.1: Vehicle Hierarchy ");
  var myCar = Car("Honda", "Civic", 4);
  myCar.display();

  print("\n=== Task 3.2: Animal Sounds ");
  var dog = Dog();
  var cat = Cat();
  dog.makeSound();
  cat.makeSound();

  print("\n=== Task 3.3: Shape Hierarchy ");
  var circle = Circle("Red", 5.0);
  var square = Square("Blue", 4.0);
  print("Circle -> Color: ${circle.color}, Radius: ${circle.radius}");
  print("Square -> Color: ${square.color}, Side Length: ${square.sideLength}");

  print("\n=== Task 3.4: Employee and Manager ");
  var emp = Employee("Alice", 3000.0);
  var mgr = Manager("Bob", 4000.0, 1500.0);
  print("Employee Salary: ${emp.calculateSalary()}");
  print("Manager Salary: ${mgr.calculateSalary()}");

  print("\n=== Task 3.5: Library Items ");
  var book = Book("1984", 1, "George Orwell");
  var dvd = DVD("Inception", 2, "Christopher Nolan");
  print(book.getDetails());
  print(dvd.getDetails());
}
