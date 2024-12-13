import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@Riverpod(keepAlive: true)
class RiverpodFutureNotifier extends _$RiverpodFutureNotifier {
  @override
  FutureOr<int> build() {
    return 0;
  }

  Future<void> start() async {
    Timer.periodic(const Duration(milliseconds: 200), (t) {
      state = AsyncValue.data(state.requireValue + 1);
    });
  }

  void stop() {
    // 通知を停止
    state = const AsyncValue.data(0);
  }
}

@Riverpod(keepAlive: true)
class RiverpodInfinityLoading extends _$RiverpodInfinityLoading {
  @override
  FutureOr<int> build() {
    state = const AsyncValue.loading();
    return 0;
  }

  void loading() {
    state = const AsyncValue.loading();
  }
}

@Riverpod(keepAlive: true)
class RiverpodInfinityLoading2 extends _$RiverpodInfinityLoading2 {
  @override
  Future<int> build() {
    return Future.value(0);
  }

  void loading() {
    state = const AsyncValue.loading();
  }
}
