import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/types/memo.dart';
import '../../runner/notifiers/memo_list.dart';

typedef _N = MemoListNotifier;

/// メモ一覧のプロバイダー
final memoListProvider = AsyncNotifierProvider<_N, List<Memo>>(() {
  return _N();
});
