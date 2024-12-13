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
    initialLocation: '/A',
    navigatorKey: rootNavigatorKey,
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: shellRouteNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return Scaffold(body: child);
        },
        routes: [
          GoRoute(
            path: '/A',
            builder: (BuildContext context, GoRouterState state) {
              return const Screen1();
            },
          ),
          GoRoute(
            path: '/start',
            builder: (BuildContext context, GoRouterState state) {
              return const Screen2();
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

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Open Start'),
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Go to Start?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                        showModalBottomSheet<void>(
                          context: shellRouteNavigatorKey.currentContext!,
                          builder: (context) {
                            return const BottomSheetRoot();
                          },
                        );
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text('No'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
            context.go('/content');
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
