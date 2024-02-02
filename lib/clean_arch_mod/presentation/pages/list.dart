import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_learning/clean_arch_mod/application/di/infrastructure.dart';
import 'package:flutter_learning/clean_arch_mod/application/di/usecases.dart';
import 'package:flutter_learning/clean_arch_mod/application/state/memo_list_provider.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/router/go_router.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/router/page_path.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/theme/sizes.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/add_button.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/memo_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 一覧画面
class ListPage extends HookConsumerWidget {
  const ListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// logger
    ref.watch(loggerProvider).debug('ListPage.build()');

    // 画面が表示された時に処理をする
    useEffect(
      () {
        // スプラッシュ画面がないのでここで初期化
        ref.watch(initAppProvider).execute();

        return null;
      },
      const [],
    );

    /// メモ一覧
    final memoList = ref.watch(memoListProvider);
    ref.watch(initAppProvider);

    /// リスト
    final listView = ListView.builder(
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
            ref.read(deleteMemoProvider).deleteMemo(memo.id);
          },
        );
      },
    );

    /// 追加ボタン
    final addButton = AddButton(
      onPressed: () {
        // ユースケースを呼び出す
        ref.read(addMemoProvider).addNewMemo();
      },
    );

    /// 画面レイアウト
    return Scaffold(
      floatingActionButton: addButton,
      body: Padding(
        padding: const EdgeInsets.all(RawSize.p4),
        child: listView,
      ),
    );
  }
}
