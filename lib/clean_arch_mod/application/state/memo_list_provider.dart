import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../clean_arch_mod/application/state/memo_list_notifier.dart';
import '../../../clean_arch_mod/domain/types/memo.dart';

/// メモ一覧のプロバイダー
final memoListProvider = StateNotifierProvider<MemoListNotifier, List<Memo>>(
  (ref) {
    return MemoListNotifier([]);
  },
);
