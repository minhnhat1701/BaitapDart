import 'dart:io';

void ex1() {
  print("Ex1: Write a dart program to check if the number is odd or even.");
  stdout.write("n = ");
  int n = int.parse(stdin.readLineSync()!);
  String s = (n % 2 == 1 ? "odd" : "even");
  print("$n is $s");
}

void ex2() {
  print("Ex2: Write a dart program to append your friends name to a file that already has your name.");
  
}

void ex3() {
  print("Ex3: Write a dart program to get the current working directory.");
  
}

void ex4() {
  print("Ex4: Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.");
  
}

void ex5() {
  print("Ex5: Write a dart program to create 100 files using loop");
  
}

void ex6() {
  print("Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.");

}

void ex7() {
  print("Write a dart program to store name, age, and address of students in a csv file and read it.");
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
}
