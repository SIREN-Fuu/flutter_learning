import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/state/editing_memo_notifier.dart';
import '../../application/state/memo_list_provider.dart';
import '../../domain/types/memo.dart';

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
