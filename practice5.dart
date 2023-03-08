import 'dart:io';

void ex1() {
  print("Ex1: Write a dart program to add your name to “hello.txt” file.");
  File file = File('hello.txt');
  file.writeAsStringSync('Ha Nhat Minh\n');
}

void ex2() {
  print("Ex2: Write a dart program to append your friends name to a file that already has your name.");
  File file = File('hello.txt');
  file.writeAsStringSync('Friend\'s name\n', mode: FileMode.append);
}

void ex3() {
  print("Ex3: Write a dart program to get the current working directory.");
  Directory current = Directory.current;
  print('Current working directory: ${current.path}');
}

void ex4() {
  print("Ex4: Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.");
  File originalfile = File('hello.txt');
  File copyfile = File('hello_copy.txt');
  originalfile.copySync(copyfile.path);
}

void ex5() {
  print("Ex5: Write a dart program to create 100 files using loop");
  for (int i = 0; i < 100; i++) {
    File file = File('file$i.txt');
    file.createSync();
  }
}

void ex6() {
  print("Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.");
  File file = File('hello_copy.txt');
  if (file.existsSync()) {
    file.deleteSync();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}

void ex7() {
  print("Write a dart program to store name, age, and address of students in a csv file and read it.");
  List<List<dynamic>> rows = [
    ['Name', 'Age', 'Address'],
    ['Minh', 20, 'HP1'],
    ['Bien', 21, 'HP2'],
    ['Trung', 22, 'HP3'],
  ];

  File csvFile = File('students.csv');
  String csvString = rows.map((row) => row.join(',')).join('\n');
  csvFile.writeAsStringSync(csvString);

  List<String> lines = csvFile.readAsLinesSync();
  List<List<dynamic>> data = lines.map((line) => line.split(',')).toList();

  for (int i = 0; i < data.length; i++) {
    print('Name: ${data[i][0]}, Age: ${data[i][1]}, Address: ${data[i][2]}');
  }
}

void main() {
}
