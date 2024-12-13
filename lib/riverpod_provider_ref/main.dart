// ignore_for_file: prefer_final_locals

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../plugins/logger.dart';

part 'main.g.dart';

class Logging {
  Logging(this._message);
  final String _message;
  void print() {
    logger.d('Logging: $_message');
  }
}

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state = state + 1;
  }

  int get value => state;
}

@riverpod
int counter10(Ref ref) {
  final counter = ref.read(counterNotifierProvider);
  final multi = counter * 10;
  final message = 'basic10: $multi';
  logger.d(message);
  Logging(message).print();
  return multi;
}

@riverpod
int counter10UseNotifier(Ref ref) {
  // 呼び出し元がreadまたは他にwatchするものがあればwatchで動作する
  // 以下のreadとwatchは同じ動作
  final counter = ref.read(counterNotifierProvider.notifier).value;
  final multi = counter * 10;
  final message = 'basic10UseNotifier: $multi';
  logger.d(message);
  Logging(message).print();
  return multi;
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

    var counter = 0;
    var counter10 = 0;
    var counterNotifier = 0;
    var counterNotifierValue = 0;

    // NotifierProviderの場合はwatchなら期待動作
    // readならbuild()が呼ばれたときは値が取得できる
    counter = ref.watch(counterNotifierProvider);

    // watchでさらにProvider内もwatchの場合のみ動作する
    // どこかがreadであった場合は動作しない
    // readの場合はインスタンスを取得しようとしてくれるので、providerが無反応な場合は何も起こらない動作となる
    counter10 = ref.read(counter10Provider);

    // notifierのインスタンスをProviderで取得している
    // notifierのインスタンスを取得しているのでwatchでは起動時の1回のみ動作する
    // readはインスタンスを取得しようとしてくれるので、.notifierなら動作する
    counterNotifier = ref.read(counter10UseNotifierProvider);
    //counterNotifier = ref.watch(counter10UseNotifierProvider);

    // notifierのインスタンスだからreadもwatchも同じ挙動
    // build()が呼ばれたときは値が取得できる
    counterNotifierValue = ref.read(counterNotifierProvider.notifier).value;

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
            Text(
              'counterNotifierProviderを10倍した値は: $counter10',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Riverpod10GGenの値は: $counterNotifier',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Riverpod10HGenの値は: $counterNotifierValue',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logger.i('Button Pressed');
          ref.read(counterNotifierProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
