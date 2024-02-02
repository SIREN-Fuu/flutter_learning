import 'package:flutter/material.dart';
import 'package:flutter_learning/clean_arch_mod/domain/types/status.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/theme/colors.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/theme/sizes.dart';
import 'package:flutter_learning/clean_arch_mod/presentation/widgets/status_image.dart';

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
