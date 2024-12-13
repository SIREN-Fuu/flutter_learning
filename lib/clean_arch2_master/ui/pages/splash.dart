import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../core/types/app_init_result.dart';
import '../../runner/providers/app_init_result.dart';
import '../../ui/router/go_router.dart';
import '../../ui/router/page_path.dart';

/// スプラッシュ画面
class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 初期化の進捗を監視
    ref.listen(
      appInitResultProvider,
      (_, asyncResult) {
        final result = asyncResult.value;
        if (result == null) {
          return;
        }
        cleanArch2Logger.info('初期化完了を検知しました');

        switch (result) {
          case AppInitResult.immediateUpdate:
            cleanArch2Logger.warn('スプラッシュ画面中に強制アップデートが検知されました');
          case AppInitResult.signedOut:
            cleanArch2Logger.info('サインイン画面へ移動します');
            final router = ref.read(goRouterProvider);
            router.goNamed(PageId.signIn.routeName);
          case AppInitResult.signedIn:
            cleanArch2Logger.info('ホーム画面へ移動します');
            final router = ref.read(goRouterProvider);
            router.goNamed(PageId.home.routeName);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('スプラッシュ画面'),
      ),
      body: const Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
