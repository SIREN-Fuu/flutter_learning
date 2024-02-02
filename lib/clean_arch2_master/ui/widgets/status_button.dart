import 'package:flutter/material.dart';

import '../../core/types/status.dart';
import '../../ui/theme/colors.dart';
import '../../ui/theme/sizes.dart';
import '../../ui/widgets/status_image.dart';

/// ステータス切り替えボタン
class StatusButton extends StatelessWidget {
  const StatusButton({
    super.key,
    required this.status,
    required this.onPressed,
  });

  /// 現在のステータス
  final Status status;

  /// コールバック
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: BrandColor.bananaYellow,
        padding: const EdgeInsets.all(RawSize.p8),
      ),
      onPressed: onPressed,
      child: StatusImage(status: status),
    );
  }
}
