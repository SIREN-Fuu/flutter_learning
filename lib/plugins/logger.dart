import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

/// Logger How to Use
/// * logger.t("Trace log");
/// * logger.d("🐛 Debug log");
/// * logger.i("💡 Info log");
/// * logger.w("🌡️ Warning log");
/// * logger.e("⛔ Error log", error: 'Test Error');
/// * logger.f("👾 What a fatal log", error: error, stackTrace: stackTrace);
Logger logger = Logger(
  filter: MyFilter(),
  printer: MyPrinter(),
);

class MyPrinter extends PrettyPrinter {
  static final Map<Level, String> defaultLevelEmojis = {
    Level.trace: '',
    Level.debug: '🐛',
    Level.info: '💡',
    //Level.warning: '⚠️',
    Level.warning: '🌡️',
    Level.error: '⛔',
    Level.fatal: '👾',
  };
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.defaultLevelColors[event.level];
    final emoji = defaultLevelEmojis[event.level];
    return [
      color!(
        '$emoji${DateFormat('HH:mm:ss.SSS').format(DateTime.now())}: ${event.message}',
      ),
    ];
  }
}

class MyFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}
