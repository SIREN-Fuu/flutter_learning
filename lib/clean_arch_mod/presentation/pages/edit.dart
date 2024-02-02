import 'package:flutter/material.dart';
import 'package:flutter_learning/clean_arch_mod/application/di/infrastructure.dart';
import 'package:flutter_learning/clean_arch_mod/application/di/usecases.dart';
import 'package:flutter_learning/clean_arch_mod/application/state/editing_memo_provider.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/dialogs/warn.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/router/go_router.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/theme/colors.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/theme/l10n.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/theme/sizes.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/gap.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/save_button.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/status_button.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/status_text.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/text_edit_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 編集画面
class EditPage extends ConsumerWidget {
  const EditPage({
    super.key,
    required this.memoId,
  });

  final String memoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// logger
    ref.watch(loggerProvider).debug('EditPage.build()');

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
          ref.read(updateMemoProvider(memoId)).editStatus();
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
        ref.read(updateMemoProvider(memoId)).editText(value);
      },
    );

    /// 保存ボタン
    final saveButton = SaveButton(
      onPressed: () {
        // ユースケースを呼び出す
        ref.read(updateMemoProvider(memoId)).save(
          onValidateFailure: () {
            // 失敗したらダイアログを表示
            showWarnDialog(
              context,
              L10n.tooLongTextMessage,
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
        title: const Text(L10n.edit),
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
