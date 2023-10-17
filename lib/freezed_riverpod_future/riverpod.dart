import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'freezed.dart';

part 'riverpod.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() => state++;
}

@riverpod
class SimpleNotifier extends _$SimpleNotifier {
  @override
  AccountInfo build() {
    return const AccountInfo(
      name: 'Mina',
      age: 30,
      lengthCounter: ['a', 'b', 'c'],
      counter: 0,
    );
  }

  void updateState({bool loadingState = true}) {
    state = state.copyWith(age: state.age + 1);
  }
}

@riverpod
class FutureOrNotifier extends _$FutureOrNotifier {
  @override
  FutureOr<AccountInfo> build() {
    return const AccountInfo(
      name: 'Nina',
      age: 20,
      lengthCounter: ['a', 'b', 'c'],
      counter: 0,
    );
  }

  // https://docs-v2.riverpod.dev/docs/providers/notifier_provider
  Future<void> updateState(
    Future<AccountInfo> futureMethod, {
    bool loadingState = true,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return futureMethod.then((value) {
        final account = value;
        return account;
      });
    });
  }
}
