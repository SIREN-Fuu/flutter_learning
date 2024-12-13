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
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/second',
        builder: (context, state) => const SecondScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      backButtonDispatcher: CustomBackButtonDispatcher(_router),
    );
  }
}

class CustomBackButtonDispatcher extends RootBackButtonDispatcher {
  CustomBackButtonDispatcher(this._router);
  final GoRouter _router;

  @override
  Future<bool> didPopRoute() async {
    if (_router.canPop()) {
      _router.pop();
      return true; // ポップが成功した場合
    } else {
      // ルートがポップできない場合でもアプリが終了しないようにする
      debugPrint(
        '!!!!!!!!!!!!!!!!!!!!!!!!onWillPop!!!!!!!!!!!!!!!!!!!!!!!!!!!',
      );
      return true; // ここで true を返すことでアプリが終了しないようにする
    }
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
            GoRouter.of(context).go('/second');
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
