import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
GlobalKey<NavigatorState> shellRouteNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    navigatorKey: rootNavigatorKey,
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: shellRouteNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return Scaffold(body: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const Screen1();
            },
          ),
          GoRoute(
            path: '/content',
            builder: (BuildContext context, GoRouterState state) {
              return const BottomSheetContent();
            },
          ),
        ],
      ),
    ],
  );
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Open BottomSheet'),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (context) {
                return const BottomSheetRoot();
              },
            );
          },
        ),
      ),
    );
  }
}

class BottomSheetRoot extends StatelessWidget {
  const BottomSheetRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.push('/content');
          },
          child: const Text('BottomSheetRoot'),
        ),
      ],
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('BottomSheetContent')),
    );
  }
}
