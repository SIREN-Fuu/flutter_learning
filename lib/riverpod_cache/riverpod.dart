import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@riverpod
CounterUsecase counterAccess(Ref ref) {
  final counterNotifier = ref.watch(counterNotifierProvider.notifier);
  return CounterUsecase(counterNotifier: counterNotifier);
}

class CounterUsecase {
  CounterUsecase({required this.counterNotifier});
  CounterNotifier counterNotifier;

  void increment() {
    counterNotifier.increment();
  }

  int get value => counterNotifier.value;
}

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  int get value => state;
}
