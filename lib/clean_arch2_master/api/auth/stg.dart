import '../../core/interfaces/auth.dart';
import '../../core/types/sign_in_with.dart';
import '../../core/types/user.dart';

/// stgフレーバー用の Firebase Auth
class StgAuth implements Auth {
  @override
  Stream<User?> watchUser() {
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignedIn() {
    throw UnimplementedError();
  }

  @override
  Future<void> signIn(SignInWith signInWith) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
