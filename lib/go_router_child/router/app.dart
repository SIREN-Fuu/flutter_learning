import 'package:flutter/material.dart';
import 'package:flutter_learning/go_router_child/router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// アプリ全体
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(fontFamily: 'NotoSans', brightness: Brightness.dark),
    );
  }
}
