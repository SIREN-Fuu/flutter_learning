import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../core/types/sign_in_with.dart';
import '../../runner/providers/api.dart';
import '../../runner/providers/user.dart';
import '../../ui/router/go_router.dart';
import '../../ui/router/page_path.dart';

/// サインイン画面
class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーを監視
    ref.listen(userProvider, (_, u) {
      switch (u) {
        case AsyncData(:final value):
          if (value != null) {
            cleanArch2Logger
              ..info('サインインを検知しました')
              ..info('ホーム画面へ移動します');
            ref.read(goRouterProvider).goNamed(PageId.home.routeName);
          }
        default:
          break;
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('サインイン画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider).signIn(SignInWith.google);
              },
              child: const Text('Googleでサインイン'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider).signIn(SignInWith.apple);
              },
              child: const Text('Appleでサインイン'),
            ),
          ],
        ),
      ),
    );
  }
}
