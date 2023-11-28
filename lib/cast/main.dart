import 'package:flutter_learning/plugins/logger.dart';

void main() {
  // final mario = Mario();
  final Person person1 = Mario();
  // final person2 = Mario();

  if (person1 is Mario) {
    person1.greet();
  }
}

class Person {}

class Mario extends Person {
  void greet() {
    logger.d("Hi! I'm Mario.");
  }
}

// class Luigi extends Person {}
