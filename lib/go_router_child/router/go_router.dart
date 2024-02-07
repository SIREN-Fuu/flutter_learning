import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../go_router_child/pages/page_a.dart';
import '../../../go_router_child/pages/page_b.dart';
import '../../../go_router_child/pages/page_c.dart';
import '../../../go_router_child/pages/page_d.dart';

/// Provide GoRouter
final goRouterProvider = Provider(
  (ref) {
    return GoRouter(
      // パス (アプリが起動したとき)
      initialLocation: '/',
      // パスと画面の組み合わせ
      routes: [
        GoRoute(
          path: '/',
          name: 'a',
          builder: (context, state) => const PageGcA(),
          routes: [
            GoRoute(
              path: 'b',
              name: 'b',
              builder: (context, state) {
                return const PageGcB();
              },
            ),
            GoRoute(
              path: 'c',
              name: 'c',
              builder: (context, state) => const PageGcC(),
            ),
            GoRoute(
              path: 'd',
              name: 'd',
              builder: (context, state) => const PageGcD(),
            ),
          ],
          onExit: (context) {
            return false;
          },
        ),
      ],

      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const PageGcA(),
      ),
    );
  },
);
