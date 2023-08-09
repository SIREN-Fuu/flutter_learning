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
class FreezedCounter extends _$FreezedCounter {
  @override
  Freezed build() {
    return const Freezed(
      name: 'Mina',
      age: 30,
      lengthCounter: ['a', 'b', 'c'],
    );
  }

  void increment() {
    state = state.copyWith(age: state.age + 1);
  }
}

@riverpod
class UnfreezedCounter extends _$UnfreezedCounter {
  @override
  Unfreezed build() {
    return Unfreezed(
      name: 'Rina',
      age: 20,
      lengthCounter: ['a', 'b', 'c'],
      normalClass: NormalClass(),
    );
  }

  void increment() {
    state = state.copyWith(
      normalClass: NormalClass(age: state.normalClass.age + 1),
    );
  }
}
