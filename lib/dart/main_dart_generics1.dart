import '../plugins/logger.dart';

class Box<T> {
  Box(this.value);
  T value;
}

void main() {
  // int型のBoxインスタンス
  final intBox = Box<int>(42);
  logger.d(intBox.value); // 42

  // String型のBoxインスタンス
  final strBox = Box<String>('Hello');
  logger.d(strBox.value); // Hello
}
