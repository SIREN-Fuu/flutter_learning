import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/types/memo.dart';

/// メモ一覧を管理するノティファイヤ
class MemoListNotifier extends StateNotifier<List<Memo>> {
  MemoListNotifier(
    /// 初期値
    super._state,
  );

  /// 新しい一覧をセットする
  void set(List<Memo> list) {
    state = list;
  }

  /// リストの一番末尾にメモを追加する
  void add(Memo memo) {
    state = [...state, memo];
  }

  /// 指定されたIDのメモを削除する
  void delete(String id) {
    state = List.of(state)
      ..removeWhere(
        (memo) => memo.id == id,
      );
  }

  /// メモを上書きする
  void replace(Memo memo) {
    state = state.map((old) {
      if (old.id == memo.id) {
        return memo;
      } else {
        return old;
      }
    }).toList();
  }
}
