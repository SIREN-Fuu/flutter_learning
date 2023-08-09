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
    // NOTE: Compile Error
    //state.age = state.age + 1;

    state = state.copyWith(age: state.age + 1);

    // NOTE: Execution Error
    //state.lengthCounter.add('value');
  }
}

// NOTE: Not working
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
    // NOTE: Not working
    //state.age = state.age + 1;
    //state = state.copyWith();

    ///Basic Method Working
    //state = state.copyWith(age: state.age + 1);
  }

  void incrementList() {
    // state.lengthCounter.add('value');
    //state.lengthCounter.add('value');

    // state = state.copyWith(
    //   lengthCounter: [...state.lengthCounter, 'd'],
    // );
  }

  void incrementNormalClass() {
    state.normalClass.age = state.normalClass.age + 1;
    state = state.copyWith();
  }
}

// NOTE: Not working
@riverpod
class NormalListCounter extends _$NormalListCounter {
  List<String> list = ['Rika', 'Rika', 'Rika', 'Rika', 'Rika', 'Rika', 'Rika'];

  @override
  List<String> build() {
    return list;
  }

  void incrementList() {
    list.add('value');
    state = list;
  }
}

// NOTE: Not working
@riverpod
class NormalListCounterEx extends _$NormalListCounterEx {
  List<String> list = ['Rika', 'Rika', 'Rika', 'Rika', 'Rika', 'Rika', 'Rika'];

  @override
  List<String> build() {
    return list;
  }

  void changeName() {
    list[0] = 'Reka';
    state = list;
  }
}
