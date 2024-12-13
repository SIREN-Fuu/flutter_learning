import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            debugPrint(
              '!!!!!!!!!!!!!!!!!!!!!!!!!!pop invoked!!!!!!!!!!!!!!!!!!!!!!!!!!!',
            );
          },
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/second',
        builder: (context, state) => PopScope(
          canPop: true,
          onPopInvokedWithResult: (didPop, result) {
            debugPrint(
              '!!!!!!!!!!!!!!!!!!!!!!!!!!pop invoked!!!!!!!!!!!!!!!!!!!!!!!!!!!',
            );
          },
          child: const SecondScreen(),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).push('/second');
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/');
          },
          child: const Text('Back to Home Screen'),
        ),
      ),
    );
  }
}
