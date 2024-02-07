import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/types/user.dart';
import '../../runner/providers/api.dart';

/// User
class UserNotifier extends StreamNotifier<User?> {
  @override
  Stream<User?> build() {
    final auth = ref.read(authProvider);
    return auth.watchUser();
  }
}
