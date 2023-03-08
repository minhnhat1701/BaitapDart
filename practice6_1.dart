class Laptop {
  String? id;
  String? name;
  String? ram;

  void print_all() {
    print("ID: $id");
    print("Name: $name");
    print("Ram: $ram");
  }
}

class House {
  String? id;
  String? name;
  String? prize;

  House(String? id, String? name, String? prize) {
    this.id = id;
    this.name = name;
    this.prize = prize;
  }

  void print_all() {
    print("ID: $id");
    print("Name: $name");
    print("Prize: $prize");
  }
}

void ex1() {
  Laptop A = Laptop();
  A.id = "1";
  A.name = "A";
  A.ram = "8Gb";
  Laptop B = Laptop();
  B.id = "2";
  B.name = "B";
  B.ram = "8Gb";
  Laptop C = Laptop();
  C.id = "3";
  C.name = "C";
  C.ram = "8Gb";
  A.print_all();
  B.print_all();
  C.print_all();
}

void ex2() {
  House A = House("1", "A", "1000\$");
  House B = House("2", "B", "1000\$");
  House C = House("3", "C", "1000\$");
  A.print_all();
  B.print_all();
  C.print_all();
}

void main() {
  // 1. Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
  // 2. Write a dart program to create a class House with properties [id, name, prize]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.
  ex1();
  ex2();
}
