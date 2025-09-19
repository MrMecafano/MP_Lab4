//ASYNC PROGRAMMING

// Task 6.1: Fetch User Data (async/await)
Future<Map<String, dynamic>> fetchUserData() async {
  print("Fetching user data...");
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched!");
  return {"id": 101, "name": "Alice"};
}

// Task 6.2: Simple Future with .then()
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => "Report generated!");
}

// Task 6.3: Rewriting with async/await
Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Report generated!";
}

// Task 6.5: Concurrent Futures
Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return "Config Loaded";
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return "Resources Loaded";
}

// MAIN FUNCTION
Future<void> main() async {
  print("=== Task 6.1: Fetch User Data");
  var userData = await fetchUserData();
  print("User Name: ${userData['name']}");

  print("\n=== Task 6.2: Simple Future with .then()");
  await generateReport().then((value) => print(value));

  print("\n=== Task 6.3: Rewriting with async/await");
  var report = await generateReportAsync();
  print(report);

  print("\n=== Task 6.5: Concurrent Futures");
  var results = await Future.wait([fetchConfiguration(), loadResources()]);
  print(results);
  print("System Ready");
}
