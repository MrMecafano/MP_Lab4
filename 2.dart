//Task 2.1: DaysOfWeek Enum
enum DaysOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

void checkDay(DaysOfWeek day) {
  switch (day) {
    case DaysOfWeek.saturday:
    case DaysOfWeek.sunday:
      print("$day is on the weekend!");
      break;
    default:
      print("$day is a weekday.");
  }
}

//Task 2.2: OrderStatus Enum
enum OrderStatus { pending, processing, shipped, delivered, cancelled }

// ---------------- Task 2.3: TrafficLight Enum ----------------
enum TrafficLight { red, yellow, green }

String getTrafficAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

// Task 2.4: UserRole Enum
enum UserRole { admin, editor, guest }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

//Task 2.5: TrafficLight Enum with Properties
extension TrafficLightProperties on TrafficLight {
  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

// Main Functions
void main() {
  print("=== Task 2.1: DaysOfWeek ");
  checkDay(DaysOfWeek.monday);
  checkDay(DaysOfWeek.saturday);

  print("\n=== Task 2.2: OrderStatus");
  var order = OrderStatus.processing;
  print("Order status: $order");

  print("\n=== Task 2.3: TrafficLight ");
  for (var light in TrafficLight.values) {
    print("$light -> ${getTrafficAction(light)}");
  }

  print("\n=== Task 2.4: UserRole ");
  var adminUser = User("Alice", UserRole.admin);
  var guestUser = User("Bob", UserRole.guest);
  print("${adminUser.name} edit permission: ${adminUser.hasEditPermission()}");
  print("${guestUser.name} edit permission: ${guestUser.hasEditPermission()}");

  print("\n=== Task 2.5: TrafficLight with Properties ");
  for (var light in TrafficLight.values) {
    print(
      "${light.name.toUpperCase()} lasts ${light.durationInSeconds} seconds",
    );
  }
}
