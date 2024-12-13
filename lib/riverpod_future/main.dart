// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_learning/plugins/logger.dart';
import 'package:flutter_learning/riverpod_future/riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        ref.read(riverpodFutureNotifierProvider.notifier).start();
        return null;
      },
      [],
    );

    // Loading Test--------------------------------
    final loadingPre =
        ref.watch(riverpodInfinityLoadingProvider).whenData((data) {
      logger.d('loadingPre: $data');
      return data;
    });

    final loadingReqPre =
        ref.watch(riverpodInfinityLoadingProvider).requireValue;

    final loadingPre2 =
        ref.watch(riverpodInfinityLoading2Provider).whenData((data) {
      logger.d('loadingPre2: $data');
      return data;
    });

    final loadingReqPre2 =
        ref.watch(riverpodInfinityLoading2Provider).requireValue;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(riverpodInfinityLoadingProvider.notifier).loading();
      ref.read(riverpodInfinityLoading2Provider.notifier).loading();
    });

    final loading11 =
        ref.watch(riverpodInfinityLoadingProvider).whenData((data) {
      logger.d('loading: $data');
      return data;
    });

    final loadingReq = ref.watch(riverpodInfinityLoadingProvider).requireValue;

    final loading22 =
        ref.watch(riverpodInfinityLoading2Provider).whenData((data) {
      logger.d('loading2: $data');
      return data;
    });

    final loadingReq2 =
        ref.watch(riverpodInfinityLoading2Provider).requireValue;
    // Loading Test--------------------------------

    final counter = ref.watch(riverpodFutureNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
              'StreamCounter: ${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(riverpodFutureNotifierProvider.notifier).stop();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
