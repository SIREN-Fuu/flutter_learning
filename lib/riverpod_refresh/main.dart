import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../plugins/logger.dart';
import 'riverpod.dart';

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
    final flag = useState(true);

    // 初期値
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (flag.value) {
        flag.value = false;
        ref.read(futureSampleProvider.notifier);
      }
    });

    ref.watch(futureSampleProvider).when(
          skipLoadingOnReload: false,
          skipLoadingOnRefresh: true,
          skipError: false,
          data: (data) {
            logger.d(data);
          },
          error: (error, stackTrace) => const Text('Error'),
          loading: () => logger.d('loading'),
        );

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
              'Watch Console',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // flag.value = flag.value ? false : true;
          ref.refresh(futureSampleProvider).when(
                skipLoadingOnReload: false,
                skipLoadingOnRefresh: true,
                skipError: false,
                data: (data) {
                  logger.d(data);
                },
                error: (error, stackTrace) => const Text('Error'),
                loading: () => logger.d('loading'),
              );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
