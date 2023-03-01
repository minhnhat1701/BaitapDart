import 'dart:io';

void ex1() {
  print("Ex1: Create a list of names and print all names using list.");
  var names = ["Nguyen Van A", "Nguyen Van B", "Nguyen Van C"];
  names.forEach((element) => print(element));
}

void ex2() {
  print("Ex2: Create a set of fruits and print all fruits using loop.");
  Set<String> fruits = {"Banana", "Apple", "Orange"};
  for (var element in fruits) {
    print(element);
  }
}

void ex3() {
  print("Ex3: Create a program thats reads list of expenses amount using user input and print total.");
  stdout.write("Number of elements: ");
  int n = int.parse(stdin.readLineSync()!);
  double total = 0;
  double a;
  List<double> Expenses = [];
  for (int i = 0; i < n; i++) {
    a = double.parse(stdin.readLineSync()!);
    Expenses.add(a);
  }
  for (double x in Expenses) {
    total += x;
  }
  print("Total: $total");
}

void ex4() {
  print("Ex4: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.");
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  for (var element in days) {
    print(element);
  }
}

void ex5() {
  print("Ex5: Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.");
  List<String> friendNames = ["Minh", "Trung", "Bien", "Thao", "Anh", "Lan", "Hoa", "An"];
  print(friendNames.where((element) => element[0].toLowerCase() == 'a'));
}

void ex6() {
  print("Ex6: Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.");
  Map<String, dynamic> person = {'name': 'Minh', 'address': 'Hai Phong', 'country': 'Vietnam', 'age': '21'};
  person['country'] = 'Vietnam1';
  print(person);
}

void ex7() {
  print("Ex7: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.");
  Map<String, dynamic> person = {'name': 'Minh', 'phone': '88888888'};
  List<String> key = person.keys.where((element) => element.length == 4).toList();
  print(key);
}

class Task {
  String title = "";
  String description = "";
  Task(String title, String description) {
    this.title = title;
    this.description = description;
  }
}

class ToDoList {
  List<Task> tasks = [];
  void add(String title, String description) {
    tasks.add(new Task(title, description));
  }

  void remove(String title) {
    tasks.remove((element) => element.title == title);
  }

  void view() {
    for (var element in tasks) {
      print(element.title + ": " + element.description);
    }
  }
}

void ex8() {
  print("Ex8: Create a simple to-do application that allows user to add, remove, and view their task.");
  ToDoList T = new ToDoList();
  String t = "";
  String d = "";
  print("Options: \nPress 1 to add a task\nPress 2 to remove a task\nPress 3 to view all tasks\nPress 0 to exit");
  stdout.write("Enter 0, 1, 2 or 3: ");
  int c = int.parse(stdin.readLineSync()!);
  print(". . . . .");
  while (c != 0) {
    if (c == 1) {
      stdout.write("Enter title of added task:");
      t = stdin.readLineSync()!;
      stdout.write("Enter description of added task: ");
      d = stdin.readLineSync()!;
      T.add(t, d);
      print(". . . . .");
    } else if (c == 2) {
      stdout.write("Enter title of removed task: ");
      t = stdin.readLineSync()!;
      T.remove(t);
      print("Task removed!");
      print(". . . . .");
    } else if (c == 3) {
      if (T.tasks.length == 0)
        print("You have no tasks to do!");
      else {
        T.view();
        print(". . . . .");
      }
    }
    stdout.write("Enter 0, 1, 2 or 3: ");
    c = int.parse(stdin.readLineSync()!);
    print(". . . . .");
  }
}

void main() {
  ex1();
  print("====================");
  ex2();
  print("====================");
  ex3();
  print("====================");
  ex4();
  print("====================");
  ex5();
  print("====================");
  ex6();
  print("====================");
  ex7();
  print("====================");
  ex8();
  print("====================");
}
