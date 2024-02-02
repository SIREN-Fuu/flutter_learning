import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../ui/pages/edit.dart';
import '../../ui/pages/home.dart';
import '../../ui/pages/sign_in.dart';
import '../../ui/pages/splash.dart';
import '../../ui/router/page_path.dart';
import '../../ui/router/signed_in_scope.dart';
import '../../ui/router/version_updater.dart';

/// Provide GoRouter
final goRouterProvider = Provider(
  (ref) {
    /// スプラッシュ画面
    final splash = GoRoute(
      path: PageId.splash.path,
      name: PageId.splash.routeName,
      builder: (_, __) => const SplashPage(),
    );

    /// サインイン画面
    final signIn = GoRoute(
      path: PageId.signIn.path,
      name: PageId.signIn.routeName,
      builder: (_, __) => const SignInPage(),
    );

    /// 一般画面たち
    final normalPages = [
      GoRoute(
        path: PageId.home.path,
        name: PageId.home.routeName,
        builder: (_, __) => const HomePage(),
      ),
      GoRoute(
        path: PageId.edit.path,
        name: PageId.edit.routeName,
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return EditPage(memoId: id);
        },
      ),
    ];

    /// サインイン限定の画面範囲
    final signedInRoute = ShellRoute(
      // 一般画面たち全員
      routes: normalPages,
      builder: (_, __, child) {
        return SignedInScope(child: child);
      },
    );

    /// アプリ アップデート に反応する画面範囲
    final updaterRoute = ShellRoute(
      routes: [
        // サインイン画面
        signIn,
        // サインイン限定の画面範囲
        signedInRoute,
      ],
      builder: (_, __, child) {
        return VersionUpdaterView(child: child);
      },
    );

    return GoRouter(
      initialLocation: PageId.splash.path,
      debugLogDiagnostics: false,
      routes: [
        splash,
        updaterRoute,
      ],
    );
  },
);
