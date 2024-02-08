import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@Riverpod(keepAlive: true)
class CounterManual extends _$CounterManual {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}
