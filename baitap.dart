import 'dart:io';

void ex1() {
  print("Ex1: Write a program to print your name in Dart.");
  print("Minh");
}

void ex2() {
  print(
      "Ex2: Write a program to print Hello I am “John Doe” and Hello I’am “John Doe” with single and double quotes.");
  String s1 = 'Hello I am “John Doe"';
  String s2 = 'Hello I’am “John Doe"';
  print("$s1 $s2");
  print(s1);
  print(s2);
}

void ex3() {
  print("Ex3: Declare constant type** of int set value 7.");
  final int n = 7;
  print(n);
}

void ex4() {
  print(
      "Ex4: Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100.");
  stdout.write("p = ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("t = ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("r = ");
  double r = double.parse(stdin.readLineSync()!);
  print("Simple interest is: ${p * t * r / 100}");
}

void ex5() {
  print("Ex5: Write a program to print a square of a number using user input.");
  stdout.write("n = ");
  double n = double.parse(stdin.readLineSync()!);
  print("Square of $n is: ${n * n}");
}

void ex6() {
  print(
      "Ex6: Write a program to print full name of a from first name and last name using user input.");
  stdout.write("Fisrt name: ");
  String s1 = stdin.readLineSync()!;
  stdout.write("Last name: ");
  String s2 = stdin.readLineSync()!;
  print("Full name: $s1 $s2");
}

void ex7() {
  print("Ex7: Write a program to find quotient and remainder of two integers.");
  stdout.write("a = ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("b = ");
  int b = int.parse(stdin.readLineSync()!);
  print("Quotient and remainder of $a / $b is: ${a ~/ b} and ${a % b}");
}

void ex8() {
  print("Ex8: Write a program to swap two numbers.");
  print("Before:");
  stdout.write("a = ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("b = ");
  int b = int.parse(stdin.readLineSync()!);
  int c = a;
  a = b;
  b = c;
  print("After:");
  print("a = $a");
  print("b = $b");
}

void ex9() {
  print("Ex9: Write a program in Dart to remove all whitespaces from String.");
  print("Input string:");
  String s = stdin.readLineSync()!;
  s = s.replaceAll(" ", "");
  print("Output string:");
  print(s);
}

void ex10() {
  print("Ex10: Write a dart program to convert String to int.");
  String s = stdin.readLineSync()!;
  int? n = int.tryParse(s);
  print(n);
}

void ex11() {
  print(
      "Ex11: Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people");
  stdout.write("Total bill amount: ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("Number of people: ");
  double n = double.parse(stdin.readLineSync()!);
  stdout.write("Each people: ${t / n}");
}

void main() {
  ex1();
  print("====================");
  ex2();
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
  ex9();
  print("====================");
  ex10();
  print("====================");
  ex11();
}
