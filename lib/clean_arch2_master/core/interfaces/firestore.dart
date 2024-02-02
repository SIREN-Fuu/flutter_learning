// ignore_for_file: one_member_abstracts

import '../../core/types/memo.dart';

/// Firestore
abstract interface class Firestore {
  /// ユーザーIDでメモを取得
  Future<List<Memo>> findMemosByUserId(String userId);
}
