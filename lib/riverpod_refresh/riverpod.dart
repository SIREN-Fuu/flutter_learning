import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

@riverpod
class FamilyTest extends _$FamilyTest {
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

@Riverpod(keepAlive: true)
class FutureOrSample extends _$FutureOrSample {
  @override
  FutureOr<void> build() {}

  Future<void> sendString() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await Future.delayed(
        const Duration(seconds: 1),
        () => const AsyncData('Hello World'),
      );
    });
  }
}

@Riverpod(keepAlive: true)
class FutureSample extends _$FutureSample {
  @override
  Future<String> build() {
    return Future.delayed(
      const Duration(seconds: 3),
      () => 'Hello World',
    );
  }
}
