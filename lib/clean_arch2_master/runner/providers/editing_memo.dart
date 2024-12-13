import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/types/memo.dart';
import '../../runner/notifiers/editing_memo.dart';

typedef _Notifier = EditingMemoNotifier;

/// 編集中メモのプロバイダー
final editingMemoProvider = NotifierProvider.family<_Notifier, Memo, String>(
  () {
    return EditingMemoNotifier();
  },
);
