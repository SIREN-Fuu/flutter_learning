import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../plugins/logger.dart';
import 'riverpod.dart';
import 'usecase.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

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
      home: const Home(),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // addPostFrameCallbackは必須
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(simpleAccountInfoProvider).execute();
      ref.read(futureOrAccountInfoProvider).execute();
    });

    final simple = ref.watch(simpleNotifierProvider);
    final futureOr = ref.watch(futureOrNotifierProvider);
    logger
      ..e(futureOr.isLoading)
      ..w(futureOr.requireValue);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Manual Counter: ${ref.watch(counterProvider)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'SimpleNotifierProvider: ${simple.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'FutureOrNotifierProvider: ${futureOr.requireValue.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
