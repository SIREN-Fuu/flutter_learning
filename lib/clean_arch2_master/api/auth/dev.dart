import 'dart:async';

import '../../core/interfaces/auth.dart';
import '../../core/types/sign_in_with.dart';
import '../../core/types/user.dart';

/// devフレーバー用の Firebase Auth
class DevAuth implements Auth {
  // ignore: close_sinks
  final streamController = StreamController<User?>();

  @override
  Stream<User?> watchUser() {
    // 1秒後にサインインを伝える
    Future<void>.delayed(const Duration(seconds: 1)).then((_) {
      streamController.sink.add(
        const User(id: 'TEST_USER_ID', nickname: 'テストユーザー'),
      );
    });
    return streamController.stream;
  }

  @override
  Future<bool> isSignedIn() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return true;
  }

  @override
  Future<void> signIn(SignInWith signInWith) async {
    switch (signInWith) {
      case SignInWith.google:
        streamController.sink.add(
          const User(id: 'TEST_USER_ID', nickname: 'テストGoogleユーザー'),
        );
      case SignInWith.apple:
        streamController.sink.add(
          const User(id: 'TEST_USER_ID', nickname: 'テストAppleユーザー'),
        );
    }
  }

  @override
  Future<void> signOut() async {
    streamController.sink.add(null);
  }
}
