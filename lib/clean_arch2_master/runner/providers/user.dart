import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/types/user.dart';
import '../../runner/notifiers/user.dart';

typedef _Notifier = UserNotifier;
typedef _State = User?;

/// User
final userProvider = StreamNotifierProvider<_Notifier, _State>(
  () {
    return _Notifier();
  },
);
