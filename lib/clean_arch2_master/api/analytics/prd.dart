import '../../core/interfaces/analytics.dart';
import '../../core/types/analytics_event.dart';

/// prdフレーバー用の Firebase Analytics
class PrdAnalytics implements Analytics {
  @override
  Future<void> sendEvent(AnalyticsEvent event) async {
    // DO NOTHING
  }
}
