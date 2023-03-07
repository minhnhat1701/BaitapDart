import 'dart:io';
import 'dart:math';
import 'dart:convert';

void ex1(String s) {
  print("Ex1: Write a program in Dart to print your own name using function.");
  print(s);
}

void ex2(int a, int b) {
  print("Ex2: Write a program in Dart to print even numbers between intervals using function.");
  if(a>b){
    int c=a;
    a=b;
    b=c;
  }
  for(int i=a; i<=b; i++) {
    if(i%2==0)  stdout.write("$i ");
  }
}

void ex3(int strength) {
  print("Ex3: Write a program in Dart that generates random password.");
  final random = Random.secure();
  //tạo random với danh sách có độ lớn 5,15,25 và giá trị random từ 0-255
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  //loại trừ ký tự đặc biệt bằng base64URL và join lại
  List charList = base64UrlEncode(intList).split('').toList();
  //hoán vị thêm lần nữa
  charList.shuffle();
  print("\npassword là: ${charList.join('')}\n");
}

void ex4(double radius) {
  print("Ex4: Write a program in Dart that find the area of a circle using function.");
  double rs = radius*radius*3.14;
  print(rs);
}

void ex5(double a, double b) {
  print("Ex5: Write a program in Dart to calculate power of a certain number. For e.g 5^3=125.");
  double c = sqrt(a*a+b*b);
  print("Hypotenuse of right triangle: $c");
}

void ex6(String s) {
  print("Write a program in Dart to reverse a String using function.");
  var chars = s.split('');
  print(chars.reversed.join());
}

void ex7(double a) {
  print("Write a dart program to generate multiplication tables of 1-9.");
  print(a*a*a);
}

void main() {
}
