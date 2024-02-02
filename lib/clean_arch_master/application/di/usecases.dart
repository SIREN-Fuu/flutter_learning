import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/di/infrastructure.dart';
import '../../application/state/editing_memo_provider.dart';
import '../../application/state/memo_list_provider.dart';
import '../../application/usecases/add_memo.dart';
import '../../application/usecases/delete_memo.dart';
import '../../application/usecases/init_app.dart';
import '../../application/usecases/update_memo.dart';

/// Init App
final initAppProvider = Provider<InitAppUsecase>(
  (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.watch(memoListProvider.notifier);
    return InitAppUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
    );
  },
);

/// Add Memo
final addMemoProvider = Provider<AddMemoUsecase>(
  (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.watch(memoListProvider.notifier);
    return AddMemoUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
    );
  },
);

/// Delete Memo
final deleteMemoProvider = Provider<DeleteMemoUsecase>(
  (ref) {
    final logger = ref.read(loggerProvider);
    final firebase = ref.watch(firebaseProvider);
    final listNotifier = ref.watch(memoListProvider.notifier);
    return DeleteMemoUsecase(
      logger: logger,
      firebase: firebase,
      listNotifier: listNotifier,
    );
  },
);

/// Update Memo
final updateMemoProvider = Provider.family<UpdateMemoUsecase, String>(
  (ref, id) {
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
  },
);
