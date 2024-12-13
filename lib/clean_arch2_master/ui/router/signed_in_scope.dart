import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../runner/providers/user.dart';
import '../../ui/router/go_router.dart';
import '../../ui/router/page_path.dart';
import '../../ui/widgets/loading.dart';

/// サインイン限定の画面範囲
class SignedInScope extends ConsumerWidget {
  const SignedInScope({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ユーザー
    final asyncUser = ref.watch(userProvider);

    ref.listen(userProvider, (_, u) {
      switch (u) {
        case AsyncData(:final value):
          if (value == null) {
            cleanArch2Logger
              ..info('サインアウトを検知しました')
              ..info('サインイン画面へ移動します');
            ref.read(goRouterProvider).goNamed(PageId.signIn.routeName);
          }
        default:
          break;
      }
    });

    return switch (asyncUser) {
      AsyncData() => child,
      _ => const Scaffold(body: LoadingView()), // ぐるぐる
    };
  }
}
