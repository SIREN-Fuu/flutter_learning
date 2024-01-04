import 'package:flutter_learning/clean_arch_riverpod_test/domain/types/memo.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/domain/types/memo_config.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/domain/types/status.dart';

/// メモに関する設定値
final memoConfig = MemoConfig(
  defaultText: 'バナナを買う',
  exampleMemos: [
    const Memo(
      id: 'xxxx-example-01-xxxx',
      status: Status.todo,
      text: 'バナナを買う',
    ),
    const Memo(
      id: 'xxxx-example-02-xxxx',
      status: Status.doing,
      text: 'バナナを食べる',
    ),
    const Memo(
      id: 'xxxx-example-03-xxxx',
      status: Status.done,
      text: 'バナナを捨てる',
    ),
  ],
  maxLength: 20,
);
