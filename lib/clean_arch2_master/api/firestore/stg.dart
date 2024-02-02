import '../../core/interfaces/firestore.dart';
import '../../core/types/memo.dart';

/// stgフレーバー用の Firestore
class StgFirestore implements Firestore {
  @override
  Future<List<Memo>> findMemosByUserId(String userId) {
    throw UnimplementedError();
  }
}
