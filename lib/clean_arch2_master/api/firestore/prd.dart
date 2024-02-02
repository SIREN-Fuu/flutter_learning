import '../../core/interfaces/firestore.dart';
import '../../core/types/memo.dart';

/// prdフレーバー用の Firestore
class PrdFirestore implements Firestore {
  @override
  Future<List<Memo>> findMemosByUserId(String userId) {
    throw UnimplementedError();
  }
}
