import 'package:flutter/material.dart';
import 'package:flutter_learning/hooks/page_1.dart';
import 'package:flutter_learning/hooks/page_2.dart';
import 'package:flutter_learning/hooks/page_3.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/1': (context) => const PageH1(title: 'Flutter Demo Home Page'),
        '/2': (context) => const PageH2(),
        '/3': (context) => const PageH3(),
      },
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
                Navigator.of(context).pushNamed('/1');
              },
              child: const Text('useState()'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/2');
              },
              child: const Text('useEffect()'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/3');
              },
              child: const Text('3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/4');
              },
              child: const Text('4'),
            ),
          ],
        ),
      ),
    );
  }
}
