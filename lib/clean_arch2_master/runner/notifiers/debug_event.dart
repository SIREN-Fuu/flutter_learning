import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../runner/providers/api.dart';

/// デバッグ用
class DebugEventNotifier extends Notifier<void> {
  @override
  void build() {}

  // キーボードで入力された数字
  void onEvent(int number) {
    cleanArch2Logger.info('---- デバッグイベント ----');
    if (number == 1) {
      cleanArch2Logger.info('DEBUG: 1. 遠隔操作でサインアウト');
      ref.read(authProvider).signOut();
    } else {
      cleanArch2Logger.info('DEBUG: ?. 登録されていないイベントです');
    }
  }
}
