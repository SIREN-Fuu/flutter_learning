import '../../core/features/logger.dart';
import '../../core/interfaces/firestore.dart';
import '../../core/types/memo.dart';
import '../../core/types/status.dart';

/// devフレーバー用の Firestore
class DevFirestore implements Firestore {
  @override
  Future<List<Memo>> findMemosByUserId(String userId) async {
    cleanArch2Logger.info('firestoreからメモを取得します');
    await Future<void>.delayed(const Duration(seconds: 1));
    cleanArch2Logger.info('firestoreからメモを取得しました');
    return [
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
    ];
  }
}
