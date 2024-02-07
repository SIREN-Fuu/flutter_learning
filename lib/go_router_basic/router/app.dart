import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../go_router_basic/pages/page_a.dart';
import '../../../go_router_basic/pages/page_b.dart';
import '../../../go_router_basic/pages/page_c.dart';
import '../../../go_router_child/pages/page_d.dart';

// アプリ全体
class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/',
        name: 'a',
        builder: (context, state) => const PageGbA(),
        // onExit: (context) {
        //   return false;
        // },
      ),
      GoRoute(
        path: '/b',
        name: 'b',
        builder: (context, state) => const PageGbB(),
      ),
      GoRoute(
        path: '/c',
        name: 'c',
        builder: (context, state) => const PageGbC(),
      ),
      GoRoute(
        path: '/d',
        name: 'd',
        builder: (context, state) => const PageGcD(),
      ),
    ],

    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const PageGbA(),
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
