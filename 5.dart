// Task 5.1: Abstract Animal Class
abstract class Animal {
  void makeSound(); // abstract method
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog says: Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat says: Meow!");
  }
}

// Task 5.2: Abstract Shape Class
abstract class Shape {
  double area(); // abstract
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

// Task 5.3: Abstract Vehicle Class
abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car is starting...");
  }

  @override
  void stop() {
    print("Car is stopping...");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike is starting...");
  }

  @override
  void stop() {
    print("Bike is stopping...");
  }
}

// Task 5.4: Abstract Appliance Class
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is spinning...");
  }

  @override
  void turnOff() {
    print("Fan stopped.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is on.");
  }

  @override
  void turnOff() {
    print("Light is off.");
  }
}

// Main Function
void main() {
  print("=== Task 5.1: Animal Abstract Class ");
  Animal dog = Dog();
  Animal cat = Cat();
  dog.makeSound();
  cat.makeSound();

  print("\n=== Task 5.2: Shape Abstract Class ");
  Shape circle = Circle(5);
  Shape rect = Rectangle(4, 6);
  print("Circle area: ${circle.area()}");
  print("Rectangle area: ${rect.area()}");

  print("\n=== Task 5.3: Vehicle Abstract Class ");
  Vehicle car = Car();
  Vehicle bike = Bike();
  car.start();
  car.stop();
  bike.start();
  bike.stop();

  print("\n=== Task 5.4: Appliance Abstract Class ");
  Appliance fan = Fan();
  Appliance light = Light();
  fan.turnOn();
  fan.turnOff();
  light.turnOn();
  light.turnOff();
}
