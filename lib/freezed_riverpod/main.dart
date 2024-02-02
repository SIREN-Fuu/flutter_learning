import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod.dart';

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
              'Basic: ${ref.watch(counterProvider)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Freezed: ${ref.watch(freezedCounterProvider).age}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Text(
              'Freezed List: ${ref.watch(freezedCounterProvider).lengthCounter.length}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Text(
              'Unfreezed: ${ref.watch(unfreezedCounterProvider).age}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Unfreezed: ${ref.watch(unfreezedCounterProvider).normalClass.age}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Unfreezed List: ${ref.watch(unfreezedCounterProvider).lengthCounter.length}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Text(
            //   'UnfreezedEx List: ${ref.watch(unfreezedCounterExProvider).lengthCounter.length.toString()}',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            Text(
              'Normal List: ${ref.watch(normalListCounterProvider).length}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Text(
              'Normal List Ex: ${ref.watch(normalListCounterExProvider)[0]}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
          ref.read(freezedCounterProvider.notifier).increment();
          ref.read(unfreezedCounterProvider.notifier).increment();
          ref.read(unfreezedCounterProvider.notifier).incrementList();
          ref.read(unfreezedCounterProvider.notifier).incrementNormalClass();
          ref.read(normalListCounterProvider.notifier).incrementList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
