import '../../domain/types/memo.dart';
import '../../domain/types/status.dart';

/// メモの更新ルールを担当するクラス
class MemoUpdater {
  /// ステータスを次に進める
  Memo switchStatus(Memo memo) {
    late final Status next;
    switch (memo.status) {
      case Status.todo:
        // 予定 => 進行中
        next = Status.doing;
      case Status.doing:
        // 進行中 => 完了
        next = Status.done;
      case Status.done:
        // 完了 => 予定(戻す)
        next = Status.todo;
    }
    // ステータスを変更してメモを返す
    return memo.copyWith(
      status: next,
    );
  }

  /// 書かれた文字を上書きして更新する
  Memo updateText(Memo memo, String newText) {
    return memo.copyWith(
      text: newText,
    );
  }
}
