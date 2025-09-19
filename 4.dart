// Task 4.1: Swimmer Mixin
mixin Swimmer {
  void swim() {
    print("Moving through the water...");
  }
}

class Human with Swimmer {
  String name;
  Human(this.name);
}

class Fish with Swimmer {
  String species;
  Fish(this.species);
}

// Task 4.2: Flyer Mixin
mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {
  String type;
  Bird(this.type);
}

class Plane with Flyer {
  String model;
  Plane(this.model);
}

// Task 4.3: Logger Mixin
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data...");
  }
}

// Task 4.4: Validator Mixin
mixin Validator {
  bool isEmailValid(String email) {
    return email.contains("@") && email.contains(".");
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  String email;
  String password;

  UserSignup(this.email, this.password);

  void validate() {
    print("Email valid: ${isEmailValid(email)}");
    print("Password strong: ${isPasswordStrong(password)}");
  }
}

// Task 4.5: Combining Mixins
mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing an instrument!");
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

// Main Function
void main() {
  print("=== Task 4.1: Swimmer Mixin ");
  var person = Human("Alice");
  var fish = Fish("Tuna");
  person.swim();
  fish.swim();

  print("\n=== Task 4.2: Flyer Mixin ");
  var bird = Bird("Eagle");
  var plane = Plane("Boeing 747");
  bird.fly();
  plane.fly();

  print("\n=== Task 4.3: Logger Mixin ");
  var service = DataService();
  service.fetchData();

  print("\n=== Task 4.4: Validator Mixin ");
  var signup = UserSignup("test@example.com", "mypassword123");
  signup.validate();

  print("\n=== Task 4.5: Combining Mixins ");
  var dancer = Dancer("Sophia");
  var guitarist = Guitarist("Liam");
  dancer.perform();
  guitarist.perform();
  guitarist.playInstrument();
}
