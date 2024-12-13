import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/types/app_init_result.dart';
import '../../runner/notifiers/app_init_result.dart';

typedef _Notifier = AppInitResultNotifier;
typedef _State = AppInitResult;

final appInitResultProvider = AsyncNotifierProvider<_Notifier, _State>(
  () {
    return _Notifier();
  },
);
