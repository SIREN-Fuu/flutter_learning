import 'package:flutter_learning/clean_arch_riverpod_test/application/types/analytics_event.dart';

abstract class FirebaseService {
  Future<void> init();
  Future<void> sendEvent(AnalyticsEvent event);
}
