import '../plugins/logger.dart';

class Utils {
  // ジェネリック型を持つメソッド
  T getFirst<T>(List<T> items) {
    return items.first;
  }
}

void main() {
  final utils = Utils();

  // int型のリストから最初の要素を取得
  final firstInt = utils.getFirst<int>([1, 2, 3]);
  logger.d(firstInt); // 1

  // String型のリストから最初の要素を取得
  final firstString = utils.getFirst<String>(['a', 'b', 'c']);
  logger.d(firstString); // a
}
