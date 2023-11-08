import 'package:collection/collection.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_learning/plugins/logger.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final list1 = <String>['a', 'b', 'c'];
    final list2 = <String>['a', 'b', 'c'];

    logger
      ..i('true equals: ${list1.equals(list2)}')
      ..i('true contentEquals: ${list1.contentEquals(list2)}');

    final dList1 = <double>[1.0, 2.0, double.nan, 4.0];
    final dList2 = <double>[1.0, 2.0, double.nan, 4.0];
    logger
      ..i(
        'true double.nan ListEquality: ${const ListEquality<double>().equals(dList1, dList2)}',
      )
      ..i('true double.nan equals: ${dList1.equals(dList2)}')
      ..i('true double.nan contentEquals: ${dList1.contentEquals(dList2)}');

    final d2List1 = <double?>[1.0, 2.0, null, 4.0];
    final d2List2 = <double?>[1.0, 2.0, null, 4.0];
    logger
      ..i('true null equals: ${d2List1.equals(d2List2)}')
      ..i('true null contentEquals: ${d2List1.contentEquals(d2List2)}')
      ..i('true null equals: ${null == null}')
      ..i('true null equals2: ${double.nan.isNaN}')
      ..i('true null equals3: ${double.nan.isNaN == double.nan.isNaN}')
      ..i('true null equals4: ${double.nan.isNaN && double.nan.isNaN}');

    double? n;
    logger.i('n: $n');
    n = n ?? 1;
    logger.i('n: $n');

    double? n2;
    n2 = double.nan;
    double? n3;
    n3 = n2.abs();
    logger.i('n2-2: $n3');

    // 状態
    final count = useState(0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${count.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => count.value++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
