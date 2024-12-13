// ignore_for_file: one_member_abstracts

import '../../core/types/analytics_event.dart';

/// Firebase Analytics
abstract interface class Analytics {
  /// イベントを送信
  Future<void> sendEvent(AnalyticsEvent event);
}
