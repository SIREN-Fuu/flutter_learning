import 'package:flutter_learning/clean_arch/application/state/editing_memo_notifier.dart';
import 'package:flutter_learning/clean_arch/application/state/memo_list_provider.dart';
import 'package:flutter_learning/clean_arch/domain/types/memo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 編集中メモのプロバイダー
final editingMemoProvider =
    StateNotifierProvider.family<EditingMemoNotifier, Memo, String>(
  (ref, id) {
    final list = ref.read(memoListProvider);
    final initialState = list.firstWhere(
      (memo) => memo.id == id,
    );
    return EditingMemoNotifier(initialState);
  },
);
