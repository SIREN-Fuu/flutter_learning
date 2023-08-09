import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

/// Logger How to Use
/// * logger.v("Verbose log");
/// * logger.d("Debug log");
/// * logger.i("Info log");
/// * logger.w("Warning log");
/// * logger.e("Error log");
/// * logger.wtf("What a terrible failure log");
Logger logger = Logger(
  printer: MyPrinter(),
);

class MyPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    return [
      color!(
        '$emoji${DateFormat('HH:mm:ss.SSS').format(DateTime.now())}: ${event.message}',
      )
    ];
  }
}

Logger loggerEx = Logger(
  printer: PrettyPrinter(
    /// 表示されるコールスタックの数
    methodCount: 0,

    /// 表示されるスタックトレースのコールスタックの数
    errorMethodCount: 0,

    /// 出力するログ1行の幅
    lineLength: 120,

    /// メッセージを彩色
    colors: true,

    /// 絵文字を出力
    printEmojis: true,

    /// タイムスタンプを出力
    printTime: false,

    /// BoxedTextを出力
    noBoxingByDefault: true,
  ),
);
