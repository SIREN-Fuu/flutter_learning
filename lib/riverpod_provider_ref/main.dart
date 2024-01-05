// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: prefer_final_locals

import 'package:flutter/material.dart';
import 'package:flutter_learning/plugins/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

// // カウントアップ用のChangeNotifierの定義。
// class Counter extends ChangeNotifier {
//   // カウントを初期化。
//   int count = 0;
//   // カウントアップ。
//   void increment() {
//     count = count + 1;
//     notifyListeners();
//   }
// }

// // プロバイダーの定義。
// final counterProvider = ChangeNotifierProvider((ref) => Counter());

// final counterProvider10 = Provider((ref) {
//   // counterProviderの更新通知を受け取り、更新時にこのプロバイダーも更新する。
//   final counter = ref.watch(counterProvider);
//   return counter.count * 10;
// });

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
int basic10(Basic10Ref ref) {
  final counter = ref.watch(counterNotifierProvider);
  logger.d('basic10: $counter');
  return counter * 10;
}

@riverpod
int basic10Notifier(Basic10NotifierRef ref) {
  // 呼び出し元がreadまたは他にwatchするものがあればwatchで動作する
  // 以下のreadとwatchは同じ動作
  final counter = ref.read(counterNotifierProvider.notifier).value;
  // final counter = ref.watch(counterNotifierProvider.notifier).value;
  // final counter2 = ref.watch(counterNotifierProvider);
  logger.d('basic10Notifier: $counter');
  return counter * 10;
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
    // final counter = ref.watch(counterProvider);
    // final counter10 = ref.watch(counterProvider10);

    var counterGen = 0;
    var counterGen10 = 0;
    var counterGen10G = 0;
    var counterGen10H = 0;

    // NotifierProviderの場合はwatchなら期待動作
    // readならbuild()が呼ばれたときは値が取得できる
    counterGen = ref.watch(counterNotifierProvider);

    // watchでさらにProvider内もwatchの場合のみ動作する
    // どこかがreadであった場合は動作しない
    // readの場合はインスタンスを取得しようとしてくれるので、providerが無反応な場合は何も起こらない動作となる
    counterGen10 = ref.watch(basic10Provider);

    // notifierのインスタンスをProviderで取得している
    // notifierのインスタンスを取得しているのでwatchでは起動時の1回のみ動作する
    // readはインスタンスを取得しようとしてくれるので、.notifierなら動作する
    counterGen10G = ref.read(basic10NotifierProvider);
    // counterGen10G = ref.watch(basic10NotifierProvider);

    // notifierのインスタンスだからreadもwatchも同じ挙動
    counterGen10H = ref.watch(counterNotifierProvider.notifier).value;

    logger.d('MyHomePage.build()');

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
            // Text(
            //   'counterProviderの値は: ${counter.count}',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            // Text(
            //   'Providerで10倍にしたときの値は: $counter10',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            Text(
              'counterNotifierProviderの値は: $counterGen',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'counterNotifierProviderを10倍した値は: $counterGen10',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Riverpod10GGenの値は: $counterGen10G',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Riverpod10HGenの値は: $counterGen10H',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counter.increment();
          ref.read(counterNotifierProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
