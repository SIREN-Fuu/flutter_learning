import '../../core/features/logger.dart';
import '../../core/interfaces/analytics.dart';
import '../../core/types/analytics_event.dart';

/// devフレーバー用の Firebase Analytics
class DevAnalytics implements Analytics {
  @override
  Future<void> sendEvent(AnalyticsEvent event) async {
    cleanArch2Logger.info('アナリティクスにイベントを送信します');
    await Future<void>.delayed(const Duration(seconds: 1));
    cleanArch2Logger.info('アナリティクスにイベントを送信しました');
  }
}
