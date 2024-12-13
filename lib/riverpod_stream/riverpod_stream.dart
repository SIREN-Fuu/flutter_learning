import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_stream.g.dart';

@Riverpod(keepAlive: true)
class RiverpodAutoCounter extends _$RiverpodAutoCounter {
  final controller = StreamController<int>();
  int counter = 0;

  @override
  Stream<int> build() {
    // 1秒ごとに通知を受け取る stream
    // ignore: close_sinks

    controller.add(counter);
    Timer.periodic(const Duration(milliseconds: 200), (t) {
      controller.add(counter++);
    });
    return controller.stream;
  }

  void reset() {
    // 通知を停止
    counter = 0;
  }
}
