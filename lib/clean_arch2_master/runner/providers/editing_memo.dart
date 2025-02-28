import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/types/memo.dart';
import '../../runner/notifiers/editing_memo.dart';

typedef _Notifier = EditingMemoNotifier;

/// 編集中メモのプロバイダー
// ignore: library_private_types_in_public_api
final NotifierProviderFamily<_Notifier, Memo, String> editingMemoProvider =
    NotifierProvider.family<_Notifier, Memo, String>(
  () {
    return EditingMemoNotifier();
  },
);
