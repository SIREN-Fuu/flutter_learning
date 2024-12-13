// ignore_for_file: prefer_final_locals, unreachable_from_main

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../plugins/logger.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class Counters with _$Counters {
  const factory Counters({
    @Default(0) int testInt,
    @Default('') String testString,
    List<int>? testListInt,
  }) = _Counters;
  const Counters._();
}

@Riverpod(keepAlive: true)
class CounterNotifier extends _$CounterNotifier {
  @override
  Counters build() {
    return const Counters(testInt: 0, testString: '', testListInt: [0]);
  }

  void updateState(Counters value) {
    state = value.copyWith();
  }

  Counters get value => state;
}

@riverpod
TestUsecase test(Ref ref) {
  var counters = ref.watch(counterNotifierProvider);
  var counterNotifier = ref.read(counterNotifierProvider.notifier);
  return TestUsecase(counters, counterNotifier);
}

class TestUsecase {
  TestUsecase(
    this.counters,
    this.counterNotifier,
  );
  Counters counters;
  final CounterNotifier counterNotifier;

  void increment() {
    var count = 500;
    counters = counters.copyWith(
      testListInt: [counters.testListInt!.first + 10],
    );
    counterNotifier.updateState(counters.copyWith(testInt: count));
    logger
      ..d(counters)
      ..d(counterNotifier.value);
  }

  void writeOut() {
    logger
      ..d(counters)
      ..d(counterNotifier.value);
  }
}

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d('MyHomePage.build()');

    //-----------------------------------------------------------------------
    var counter = 0;
    // final counter = ref.read(counterNotifierProvider);

    //-----------------------------------------------------------------------

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'counterNotifierProviderの値は: $counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => {
                    ref.read(testProvider).writeOut(),
                  },
                  child: const Text('Logger'),
                ),
                ElevatedButton(
                  onPressed: () => {
                    ref.read(testProvider).increment(),
                  },
                  child: const Text('UpdateState'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logger.i('Button Pressed');
          ref.read(testProvider).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
