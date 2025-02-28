import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/types/status.dart';

part 'memo.freezed.dart';

@freezed
sealed class Memo with _$Memo {
  const factory Memo({
    /// ID
    required String id,

    /// ステータス
    required Status status,

    /// 書かれた文字
    required String text,
  }) = _Memo;
}
