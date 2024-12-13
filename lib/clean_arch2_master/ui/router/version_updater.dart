import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/features/logger.dart';
import '../../core/types/app_update_action.dart';
import '../../runner/providers/app_update_action.dart';
import '../../ui/dialogs/frexible_update.dart';
import '../../ui/dialogs/immidiate_update.dart';

/// アプリアップデートの監視
class VersionUpdaterView extends ConsumerWidget {
  const VersionUpdaterView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      appUpdateActionProvider,
      (_, asyncAction) {
        final action = asyncAction.value;
        if (action != null) {
          // 実行するべきアクションが存在
          switch (action) {
            case AppUpdateAction.none:
              // DO NOTHING
              break;
            case AppUpdateAction.showImmediateUpdate:
              cleanArch2Logger.info('強制アップデートを検知しました');
              showImmediateUpdateDialog(context);
            case AppUpdateAction.showFrexibleUpdate:
              cleanArch2Logger.info('任意アップデートを検知しました');
              showFrexibleUpdateDialog(context);
          }
        }
      },
    );
    return child;
  }
}
