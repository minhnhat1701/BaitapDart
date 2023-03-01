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
  s = s.toLowerCase();
  final List<String> vowels = ['a', 'i', 'e', 'u', 'o'];
  assert(s.length == 1);
  assert(s.compareTo('a') >= 0 && s.compareTo('z') <= 0);
  for (int i = 0, n = vowels.length; i < n; ++i){
    if (vowels[i] == s){
      print("$s is vowel");
      return;
    }
  }
  print("$s is consonant");
}

void ex3() {
  print("Ex3: Write a dart program to check whether a number is positive, negative, or zero.");
  stdout.write("Input number: ");
  double n = double.parse(stdin.readLineSync()!);
  if(n < 0) {
    print("$n is negative");
  }
  else if(n > 0) {
    print("$n is positive");
  }
  else {
    print("$n is zero");
  }
}

void ex4() {
  print("Ex4: Write a dart program to print your name 100 times.");
  for(int i=0; i<100; i++) {
    print("Ha Nhat Minh");
  }
}

void ex5() {
  print("Ex5: Write a dart program to calculate the sum of natural numbers.");
  stdout.write("Enter number of element: ");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 0; i < n; ++i){
    int x = int.parse(stdin.readLineSync()!);
    sum += x;
  }
  print("Sum = $sum");
}

void ex6() {
  print("Write a dart program to generate multiplication tables of 5.");

}

void ex7() {
  print("Write a dart program to generate multiplication tables of 1-9.");
  for(int i = 1;  i <= 9; i ++) {
    for(int j = 1; j <= 9; j++) {
      int a = i*j;
      print("$i * $j = $a");
    }
  }
}

void ex8() {
  print("Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.");
  stdout.write("Input a: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Input operation: ');
  String operation = stdin.readLineSync()!;
  stdout.write("Input b: ");
  double b = double.parse(stdin.readLineSync()!);
  assert (operation.length == 1);
  double result = -1;
  switch (operation){
    case '+':
      result = a + b;
      break;
    case '-':
      result = a - b;
      break;
    case '/':
      assert(b != 0);
      result = a / b;
      break;
    case '*':
      result = a * b;
      break;
    default:
      break;
  }
  print("$a $operation $b = $result");
}

void ex9() {
  print("Write a dart program to print 1 to 100 but not 41.");
  for(int i=0; i<100; i++) {
    if(i != 41) stdout.write("$i ");
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
  ex9();
}
