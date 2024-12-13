import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../core/types/memo.dart';
import '../../runner/providers/memo_list.dart';
import '../../ui/router/go_router.dart';
import '../../ui/router/page_path.dart';
import '../../ui/theme/sizes.dart';
import '../../ui/widgets/add_button.dart';
import '../../ui/widgets/loading.dart';
import '../../ui/widgets/memo_card.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ログ
    cleanArch2Logger.info('ホーム画面をビルドします');

    /// メモ一覧
    final asyncMemoList = ref.watch(memoListProvider);
    final memoList = asyncMemoList;

    /// 追加ボタン
    /// メモ取得前は非表示
    final addButton = memoList.value == null
        ? null
        : AddButton(
            onPressed: () {
              // ユースケースを呼び出す
              ref.read(memoListProvider.notifier).add();
            },
          );

    /// body
    final body = switch (asyncMemoList) {
      AsyncData(:final value) => _ListView(key: key, memoList: value),
      _ => const LoadingView(),
    };

    /// 画面レイアウト
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('ホーム画面'),
      ),
      floatingActionButton: addButton,
      body: body,
    );
  }
}

/// メモ一覧
class _ListView extends ConsumerWidget {
  const _ListView({
    super.key,
    required this.memoList,
  });

  final List<Memo> memoList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(RawSize.p4),
      child: ListView.builder(
        itemCount: memoList.length,
        itemBuilder: (context, index) {
          final memo = memoList[index];
          return MemoCard(
            memo: memoList[index],
            onPressed: () {
              // 編集画面へ進む
              ref.read(goRouterProvider).pushNamed(
                PageId.edit.routeName,
                pathParameters: {'id': memo.id},
              );
            },
            onPressedDelete: () {
              // ユースケースを呼び出す
              ref.read(memoListProvider.notifier).delete(memo.id);
            },
          );
        },
      ),
    );
  }
}
