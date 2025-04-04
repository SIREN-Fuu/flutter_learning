import '../../application/interfaces/firebase.dart';
import '../../application/types/analytics_event.dart';

/// 本番環境用のFirebaseサービス
class DefaultFirebaseService implements FirebaseService {
  @override
  Future<void> init() {
    throw Exception('このアプリでFirebaseは使えません');
  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) {
    throw Exception('このアプリでFirebaseは使えません');
  }
}
