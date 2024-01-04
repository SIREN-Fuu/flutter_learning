import 'package:flutter_learning/clean_arch/application/types/analytics_event.dart';

abstract class FirebaseService {
  Future<void> init();
  Future<void> sendEvent(AnalyticsEvent event);
}
