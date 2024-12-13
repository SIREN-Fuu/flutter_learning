import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@riverpod
class RiverpodFamily extends _$RiverpodFamily {
  @override
  String build(bool arg) {
    if (arg) {
      return arg.toString();
    }
    return arg.toString();
  }

  void textChange(String string) {
    state = string;
  }
}
