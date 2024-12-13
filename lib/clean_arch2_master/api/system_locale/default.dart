import 'package:flutter/foundation.dart';
import 'package:intl/intl_browser.dart' as browser;
import 'package:intl/intl_standalone.dart' as standalone;

import '../../core/features/logger.dart';
import '../../core/interfaces/systems_locale.dart';

/// 共通用システムロケール
class DefaultSystemLocale implements SystemLocale {
  @override
  Future<void> init() async {
    cleanArch2Logger.info('システムローケールの初期化を開始します');
    if (kIsWeb) {
      // ブラウザの場合
      await browser.findSystemLocale();
    } else {
      // その他
      await standalone.findSystemLocale();
    }
    cleanArch2Logger.info('システムローケールの初期化を完了しました');
  }
}
