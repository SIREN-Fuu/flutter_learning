import '../../../plugins/logger.dart';

void main() {
  final Person person1 = Mario();

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
