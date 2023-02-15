import 'dart:io';

void ex1() {
  print("Ex1: Write a dart program to check if the number is odd or even.");
  stdout.write("n = ");
  int n = int.parse(stdin.readLineSync()!);
  String s = (n % 2 == 1 ? "odd" : "even");
  print("$n is $s");
}

void ex2() {
  print("Ex2: Write a dart program to check whether a character is a vowel ar consonant.");
  stdout.write("Input character: ");
  String s = stdin.readLineSync()!;
  final List<String> vowel = ['a', 'i', 'e', 'u', 'o'];
}

void ex3() {}

void ex4() {}

void ex5() {}

void ex6() {}

void ex7() {}

void ex8() {}

void ex9() {}

void main() {
  /*
  Write a dart program to check if the number is odd or even.
  Write a dart program to check whether a character is a vowel or consonant.
  Write a dart program to check whether a number is positive, negative, or zero.
  Write a dart program to print your name 100 times.
  Write a dart program to calculate the sum of natural numbers.
  Write a dart program to generate multiplication tables of 5.
  Write a dart program to generate multiplication tables of 1-9.
  Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
  Write a dart program to print 1 to 100 but not 41.
  */
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
}
