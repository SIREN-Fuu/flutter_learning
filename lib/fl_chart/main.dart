import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';

void main() => runApp(const MyApp());

final _router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
    GoRoute(path: '/1', builder: (context, state) => const Page1()),
    GoRoute(path: '/2', builder: (context, state) => const Page2()),
    GoRoute(path: '/3', builder: (context, state) => const Page3()),
  ],
);

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/1');
              },
              child: const Text('Chart1'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/2');
              },
              child: const Text('Chart2'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/3');
              },
              child: const Text('Chart3'),
            ),
          ],
        ),
      ),
    );
  }
}
