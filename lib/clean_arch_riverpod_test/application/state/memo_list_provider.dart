import 'package:flutter_learning/clean_arch_riverpod_test/application/state/memo_list_notifier.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/domain/types/memo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// メモ一覧のプロバイダー
final memoListProvider = StateNotifierProvider<MemoListNotifier, List<Memo>>(
  (ref) {
    return MemoListNotifier([]);
  },
);
