import 'package:flutter_learning/clean_arch/application/interfaces/firebase.dart';
import 'package:flutter_learning/clean_arch/application/types/analytics_event.dart';

/// 開発環境用のFirebaseサービス
class FakeFirebaseService implements FirebaseService {
  @override
  Future<void> init() async {
    // DO NOTHING
  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) async {
    // DO NOTHING
  }
}
