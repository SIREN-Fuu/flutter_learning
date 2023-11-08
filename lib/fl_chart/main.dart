import 'package:flutter/material.dart';
import 'package:flutter_learning/fl_chart/page_1.dart';
import 'package:flutter_learning/fl_chart/page_2.dart';
import 'package:flutter_learning/fl_chart/page_3.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const MyApp());

final _router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
    GoRoute(path: '/1', builder: (context, state) => const PageH1()),
    GoRoute(path: '/2', builder: (context, state) => const PageH2()),
    GoRoute(path: '/3', builder: (context, state) => const PageH3()),
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/1');
              },
              child: const Text('useState()'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/2');
              },
              child: const Text('useEffect()'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/3');
              },
              child: const Text('3'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/4');
              },
              child: const Text('4'),
            ),
          ],
        ),
      ),
    );
  }
}
