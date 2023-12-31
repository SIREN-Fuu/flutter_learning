import 'package:flutter/material.dart';
import 'package:flutter_learning/clean_arch/presentation/theme/colors.dart';
import 'package:flutter_learning/clean_arch/presentation/theme/fonts.dart';
import 'package:flutter_learning/clean_arch/presentation/theme/l10n.dart';

/// 削除ボタン
class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
    required this.onPressed,
  });

  /// コールバック
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        L10n.delete,
        style: BrandText.bodyS.copyWith(
          color: BrandColor.dangerRed,
        ),
      ),
    );
  }
}
