import 'package:uuid/uuid.dart';

import '../../core/types/memo.dart';
import '../../core/types/status.dart';

/// メモの作成ルールを担当するクラス
class MemoCreator {
  const MemoCreator({required this.defaultText});

  /// 最初からメモに書かれている文字
  final String defaultText;

  /// 新規メモを作成する
  Memo createNewMemo() {
    /// ランダムな ID を作成
    final id = const Uuid().v4();
    // はじめは 予定 のステータス
    const status = Status.todo;

    return Memo(
      id: id,
      status: status,
      text: defaultText,
    );
  }
}
