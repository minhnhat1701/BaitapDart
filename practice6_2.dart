enum Gender {
  male,
  female,
  others,
}

void printvalues() {
  print(Gender.values);
}

class Animal {
  String? id;
  String? name;
  String? color;
  Animal(String? id, String? name, String? color) {
    this.id = id;
    this.name = name;
    this.color = color;
  }
}

class Cat extends Animal {
  String? sound;
  Cat(String? id, String? name, String? color, String? sound) : super(id, name, color) {
    this.sound = sound;
  }
  print_all() {
    print(id);
    print(name);
    print(color);
    print(sound);
  }
}

void ex2() {
  Cat A = Cat("1", "cat", "white", "meow");
  A.print_all();
}

class Camera {
  String _id;
  String _brand;
  String _color;
  String _prize;

  Camera(this._id, this._brand, this._color, this._prize);

  String get id => _id;
  set id(String value) {
    _id = value;
  }

  String get brand => _brand;
  set brand(String value) {
    _brand = value;
  }

  String get color => _color;
  set color(String value) {
    _color = value;
  }

  String get prize => _prize;
  set prize(String value) {
    _prize = value;
  }

  void print_all() {
    print(_id);
    print(_brand);
    print(_color);
    print(_prize);
  }
}

void ex3() {
  Camera A = Camera("1", "dell", "white", "1000\$");
  A.print_all();
}

void main(List<String> args) {
// 1. Write a dart program to create an enum class for gender [male, female, others] and print all values.
// 2. Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. 3. Create an object of a Cat and print all details.
// 3. Write a dart program to create a class Camera with private properties [id, brand, color, prize]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.
}
