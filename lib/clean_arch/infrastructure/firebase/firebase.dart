import 'package:flutter_learning/clean_arch/application/interfaces/firebase.dart';
import 'package:flutter_learning/clean_arch/application/types/analytics_event.dart';

/// 本番環境用のFirebaseサービス
class DefaultFirebaseService implements FirebaseService {
  @override
  Future<void> init() async {
    throw Exception('このアプリでFirebaseは使えません');
  }

  @override
  Future<void> sendEvent(AnalyticsEvent event) async {
    throw Exception('このアプリでFirebaseは使えません');
  }
}
