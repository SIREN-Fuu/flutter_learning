import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/di/infrastructure.dart';
import '../../application/state/editing_memo_provider.dart';
import '../../application/state/memo_list_provider.dart';
import '../../application/usecases/add_memo.dart';
import '../../application/usecases/delete_memo.dart';
import '../../application/usecases/init_app.dart';
import '../../application/usecases/update_memo.dart';

part 'usecases.g.dart';

/// Init App
// @riverpod
@Riverpod(keepAlive: true)
InitAppUsecase initApp(Ref ref) {
  final logger = ref.read(loggerProvider);
  final firebase = ref.watch(firebaseProvider);
  final listNotifier = ref.watch(memoListProvider.notifier);
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
AddMemoUsecase addMemo(Ref ref) {
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
DeleteMemoUsecase deleteMemo(Ref ref) {
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
UpdateMemoUsecase updateMemo(Ref ref, String id) {
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
