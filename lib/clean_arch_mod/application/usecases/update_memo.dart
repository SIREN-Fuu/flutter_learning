import 'package:flutter_learning/clean_arch_mod/application/config/memo.dart';
import 'package:flutter_learning/clean_arch_mod/application/interfaces/firebase.dart';
import 'package:flutter_learning/clean_arch_mod/application/interfaces/logger.dart';
import 'package:flutter_learning/clean_arch_mod/application/state/editing_memo_notifier.dart';
import 'package:flutter_learning/clean_arch_mod/application/state/memo_list_notifier.dart';
import 'package:flutter_learning/clean_arch_mod/domain/features/memo_updater.dart';
import 'package:flutter_learning/clean_arch_mod/domain/features/memo_validator.dart';

/// メモを変更する
class UpdateMemoUsecase {
  UpdateMemoUsecase({
    required this.logger,
    required this.editingNotifier,
    required this.listNotifier,
    required this.firebase,
  });
  final Logger logger;
  final EditingMemoNotifier editingNotifier;
  final MemoListNotifier listNotifier;
  final FirebaseService firebase;

  /// ステータスを次に進める
  Future<void> editStatus() async {
    logger.debug('UpdateMemoUsecase.editStatus()');
    // ドメインを呼んでステータスを変更する
    final updater = MemoUpdater();
    final memo = updater.switchStatus(editingNotifier.value);
    // 編集中のメモの状態を変更する
    editingNotifier.update(memo);
  }

  /// メモの内容を編集する
  Future<void> editText(String newText) async {
    logger.debug('UpdateMemoUsecase.newText()');
    // ドメインを呼んでステータスを変更する
    final updater = MemoUpdater();
    final memo = updater.updateText(
      editingNotifier.value,
      newText,
    );
    // 編集中のメモの状態を変更する
    editingNotifier.update(memo);
  }

  /// 編集した内容を保存する
  Future<void> save({
    required void Function() onValidateFailure,
    required void Function() onSuccess,
  }) async {
    logger.debug('UpdateMemoUsecase.save()');
    // ドメインを呼んで内容をチェックする
    final validator = MemoValidator(
      maxLength: memoConfig.maxLength,
    );
    final ok = validator.validateLength(
      editingNotifier.value,
    );
    // ルール違反のときはダイアログを表示して終了
    if (!ok) {
      onValidateFailure();
      return;
    }
    // リスト一覧のメモを上書きして状態を変更
    listNotifier.replace(
      editingNotifier.value,
    );
    // 成功を知らせる
    onSuccess();
  }
}
