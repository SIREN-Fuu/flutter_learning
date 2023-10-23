import 'package:flutter/material.dart';
import 'package:flutter_learning/go_router_basic/pages/page_a.dart';
import 'package:flutter_learning/go_router_basic/pages/page_b.dart';
import 'package:flutter_learning/go_router_basic/pages/page_c.dart';
import 'package:go_router/go_router.dart';

// アプリ全体
class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/a',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/a',
        name: 'a',
        builder: (context, state) => const PageA(),
        onExit: (context) {
          return true;
        },
      ),
      GoRoute(
        path: '/b',
        name: 'b',
        builder: (context, state) => const PageB(),
      ),
      GoRoute(
        path: '/c',
        name: 'c',
        builder: (context, state) => const PageC(),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const PageA(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(fontFamily: 'NotoSans', brightness: Brightness.dark),
    );
  }
}
