import 'package:flutter_learning/clean_arch/application/di/infrastructure.dart';
import 'package:flutter_learning/clean_arch/application/state/editing_memo_provider.dart';
import 'package:flutter_learning/clean_arch/application/state/memo_list_provider.dart';
import 'package:flutter_learning/clean_arch/application/usecases/add_memo.dart';
import 'package:flutter_learning/clean_arch/application/usecases/delete_memo.dart';
import 'package:flutter_learning/clean_arch/application/usecases/init_app.dart';
import 'package:flutter_learning/clean_arch/application/usecases/update_memo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases.g.dart';

/// Init App
@riverpod
InitAppUsecase initApp(InitAppRef ref) {
  // Watchにしてみる
  // final logger = ref.read(loggerProvider);
  final logger = ref.watch(loggerProvider);

  final firebase = ref.watch(firebaseProvider);
  final listNotifier = ref.watch(memoListProvider.notifier);
  return InitAppUsecase(
    logger: logger,
    firebase: firebase,
    listNotifier: listNotifier,
  );
}

// final initAppProvider = Provider<InitAppUsecase>(
//   (ref) {
//     final logger = ref.read(loggerProvider);
//     final firebase = ref.watch(firebaseProvider);
//     final listNotifier = ref.watch(memoListProvider.notifier);
//     return InitAppUsecase(
//       logger: logger,
//       firebase: firebase,
//       listNotifier: listNotifier,
//     );
//   },
// );

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

// final addMemoProvider = Provider<AddMemoUsecase>(
//   (ref) {
//     final logger = ref.read(loggerProvider);
//     final firebase = ref.watch(firebaseProvider);
//     final listNotifier = ref.watch(memoListProvider.notifier);
//     return AddMemoUsecase(
//       logger: logger,
//       firebase: firebase,
//       listNotifier: listNotifier,
//     );
//   },
// );

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

// final deleteMemoProvider = Provider<DeleteMemoUsecase>(
//   (ref) {
//     final logger = ref.read(loggerProvider);
//     final firebase = ref.watch(firebaseProvider);
//     final listNotifier = ref.watch(memoListProvider.notifier);
//     return DeleteMemoUsecase(
//       logger: logger,
//       firebase: firebase,
//       listNotifier: listNotifier,
//     );
//   },
// );

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

// final updateMemoProvider = Provider.family<UpdateMemoUsecase, String>(
//   (ref, id) {
//     final logger = ref.read(loggerProvider);
//     final firebase = ref.watch(firebaseProvider);
//     final listNotifier = ref.watch(memoListProvider.notifier);
//     final editingNotifier = ref.watch(editingMemoProvider(id).notifier);
//     return UpdateMemoUsecase(
//       logger: logger,
//       firebase: firebase,
//       listNotifier: listNotifier,
//       editingNotifier: editingNotifier,
//     );
//   },
// );
