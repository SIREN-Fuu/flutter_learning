import 'package:flutter_learning/clean_arch_riverpod_test/application/di/infrastructure.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/state/editing_memo_provider.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/state/memo_list_provider.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/usecases/add_memo.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/usecases/delete_memo.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/usecases/init_app.dart';
import 'package:flutter_learning/clean_arch_riverpod_test/application/usecases/update_memo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases.g.dart';

/// Init App
// @riverpod
@Riverpod(keepAlive: true)
InitAppUsecase initApp(InitAppRef ref) {
  final logger = ref.read(loggerProvider);
  final firebase = ref.watch(firebaseProvider);
  final listNotifier = ref.watch(memoListProvider.notifier);
  final listNotifier2 = ref.watch(memoListProvider);
  logger.debug('Riverpod: InitAppUsecase');

  ref.onDispose(() {
    logger.debug('Riverpod: InitAppUsecase: onDispose');
  });

  return InitAppUsecase(
    logger: logger,
    firebase: firebase,
    listNotifier: listNotifier,
  );
}

/// Add Memo
@riverpod
AddMemoUsecase addMemo(AddMemoRef ref) {
  final logger = ref.read(loggerProvider);
  final firebase = ref.watch(firebaseProvider);
  final listNotifier = ref.watch(memoListProvider.notifier);
  return AddMemoUsecase(
    logger: logger,
    firebase: firebase,
    listNotifier: listNotifier,
  );
}

/// Delete Memo
@riverpod
DeleteMemoUsecase deleteMemo(DeleteMemoRef ref) {
  final logger = ref.read(loggerProvider);
  final firebase = ref.watch(firebaseProvider);
  final listNotifier = ref.watch(memoListProvider.notifier);
  return DeleteMemoUsecase(
    logger: logger,
    firebase: firebase,
    listNotifier: listNotifier,
  );
}

/// Update Memo
@riverpod
UpdateMemoUsecase updateMemo(UpdateMemoRef ref, String id) {
  final logger = ref.read(loggerProvider);
  final firebase = ref.watch(firebaseProvider);
  final listNotifier = ref.watch(memoListProvider.notifier);
  final editingNotifier = ref.watch(editingMemoProvider(id).notifier);
  return UpdateMemoUsecase(
    logger: logger,
    firebase: firebase,
    listNotifier: listNotifier,
    editingNotifier: editingNotifier,
  );
}
