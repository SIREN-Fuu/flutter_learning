import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  Stream<int> build() {
    // 1秒ごとに通知を受け取る stream
    // ignore: close_sinks
    final controller = StreamController<int>();
    var counter = 0;
    Timer.periodic(const Duration(seconds: 1), (t) {
      controller.add(counter++);
    });
    return controller.stream;
  }
}

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
