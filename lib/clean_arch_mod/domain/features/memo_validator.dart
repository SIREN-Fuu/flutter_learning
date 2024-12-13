import '../../domain/types/memo.dart';

/// メモが正しいかチェックするクラス
class MemoValidator {
  MemoValidator({
    required this.maxLength,
  });

  /// 最大文字数
  final int maxLength;

  /// メモの文字数をチェックする
  /// - true: ルールを満たしている OK
  /// - false: ルールを満たしていない NG
  bool validateLength(Memo memo) {
    return memo.text.length <= maxLength;
  }
}
