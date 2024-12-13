import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../runner/providers/editing_memo.dart';
import '../../ui/dialogs/warn.dart';
import '../../ui/router/go_router.dart';
import '../../ui/theme/colors.dart';
import '../../ui/theme/l10n.dart';
import '../../ui/theme/sizes.dart';
import '../../ui/widgets/gap.dart';
import '../../ui/widgets/save_button.dart';
import '../../ui/widgets/status_button.dart';
import '../../ui/widgets/status_text.dart';
import '../../ui/widgets/text_edit_form.dart';

/// 編集画面
class EditPage extends ConsumerWidget {
  const EditPage({
    super.key,
    required this.memoId,
  });

  final String memoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ログ
    cleanArch2Logger.info('メモ編集画面をビルドします');

    /// 編集中のメモ
    final memo = ref.watch(editingMemoProvider(memoId));

    /// ステータスボタン
    final statusButton = SizedBox(
      width: RawSize.p60,
      height: RawSize.p60,
      child: StatusButton(
        status: memo.status,
        onPressed: () {
          // ユースケースを呼び出す
          ref.read(editingMemoProvider(memoId).notifier).editStatus();
        },
      ),
    );

    /// ステータス文字
    final statusText = StatusText(status: memo.status);

    /// テキスト編集フォーム
    final editForm = TextEditForm(
      value: memo.text,
      onChanged: (value) {
        // ユースケースを呼び出す
        ref.read(editingMemoProvider(memoId).notifier).editText(value);
      },
    );

    /// 保存ボタン
    final saveButton = SaveButton(
      onPressed: () {
        // ユースケースを呼び出す
        ref.read(editingMemoProvider(memoId).notifier).save(
          onValidateFailure: () {
            // 失敗したらダイアログを表示
            showWarnDialog(
              context,
              context.l10n.tooLongTextMessage,
            );
          },
          onSuccess: () {
            // 成功したら前の画面に戻る
            ref.read(goRouterProvider).pop();
          },
        );
      },
    );

    /// 画面レイアウト
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BrandColor.bananaYellow,
        title: const Text('編集画面'),
      ),
      floatingActionButton: saveButton,
      body: Container(
        padding: const EdgeInsets.all(RawSize.p8),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(flex: 1),
            Row(
              children: [
                statusButton,
                Gap.w(RawSize.p8),
                statusText,
              ],
            ),
            Gap.h(RawSize.p20),
            editForm,
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
