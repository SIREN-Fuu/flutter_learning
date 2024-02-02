import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/types/memo.dart';

/// 編集中メモを管理するノティファイヤ
class EditingMemoNotifier extends StateNotifier<Memo> {
  EditingMemoNotifier(
    /// 初期値
    super.initialMemo,
  );

  /// 現在の状態
  Memo get value => state;

  /// 更新
  void update(Memo memo) {
    state = memo;
  }
}
