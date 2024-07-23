// ignore_for_file: cascade_invocations

import '../plugins/logger.dart';

abstract class Animal {
  factory Animal.dog() {
    return Dog();
  }

  factory Animal.cat() {
    return Cat();
  }
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() => logger.d('Woof!');
}

class Cat implements Animal {
  @override
  void makeSound() => logger.d('Meow!');
}

void main() {
  final dog = Animal.dog();
  dog.makeSound(); // Woof!

  final cat = Animal.cat();
  cat.makeSound(); // Meow!
}
