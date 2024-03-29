import 'package:flutter/material.dart';

import '../../presentation/theme/colors.dart';
import '../../presentation/theme/fonts.dart';
import '../../presentation/theme/l10n.dart';

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
