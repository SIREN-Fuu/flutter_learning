// ignore_for_file: prefer_final_locals

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// カウントアップ用のChangeNotifierの定義。
class Counter extends ChangeNotifier {
  // カウントを初期化。
  int count = 0;
  // カウントアップ。
  void increment() {
    count = count + 1;
    notifyListeners();
  }
}

// プロバイダーの定義。
final counterProvider = ChangeNotifierProvider((ref) => Counter());

final counterProvider10 = Provider((ref) {
  // counterProviderの更新通知を受け取り、更新時にこのプロバイダーも更新する。
  final counter = ref.watch(counterProvider);
  return counter.count * 10;
});

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
    final counter = ref.watch(counterProvider);
    final counter10 = ref.watch(counterProvider10);

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
              'counterProviderの値は: ${counter.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Providerで10倍にしたときの値は: $counter10',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counter.increment();
          ref.read(counterProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
