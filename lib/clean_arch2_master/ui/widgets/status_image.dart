import 'package:flutter/material.dart';

import '../../core/types/status.dart';
import '../../ui/theme/images.dart';

/// ステータス画像
class StatusImage extends StatelessWidget {
  const StatusImage({
    super.key,
    required this.status,
  });

  /// ステータス
  final Status status;

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case Status.todo:
        return Image.asset(
          BrandImage.statusTodo.path,
        );
      case Status.doing:
        return Image.asset(
          BrandImage.statusDoing.path,
        );
      case Status.done:
        return Image.asset(
          BrandImage.statusDone.path,
        );
    }
  }
}
