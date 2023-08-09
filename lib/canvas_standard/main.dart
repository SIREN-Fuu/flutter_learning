// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_learning/consumer_stateful_counter/riverpod.dart';
import 'package:flutter_learning/plugins/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  int _counterManual = 0;
  AsyncValue<int> autoCounter = const AsyncData(0);
  void _incrementCounter() {
    setState(() {
      _counterManual++;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final c = ref.watch(counterProvider);
    final counterAuto = c.hasValue ? c.requireValue : 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // NOTE: SizedBoxはColumnによって高さがInfinityになったままでエラー
            // NOTE: Expanded()なら助かる
            Expanded(
              // width: 400,
              // height: 400,
              child: MyWidget(
                counterManual: _counterManual,
                counterAuto: counterAuto,
              ),
            ),
            Text(
              'Sample Counter: $_counterManual',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'StreamCounter: $counterAuto',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyWidget extends ConsumerWidget {
  const MyWidget({
    required this.counterManual,
    required this.counterAuto,
    super.key,
  });

  final int counterManual;
  final int counterAuto;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final size = constraints.biggest;

        return Listener(
          onPointerSignal: (signal) {
            // if (signal is PointerScrollEvent) {
            //   final dy = signal.scrollDelta.dy;
            //   if (dy.abs() > 0) {
            //     _onScaleStart(signal.position);
            //     _onScaleUpdate(
            //       dy > 0 ? 0.9 : 1.1,
            //       signal.position,
            //       w,
            //     );
            //   }
            // }
          },
          child: GestureDetector(
            // // Tap and hold to view candle details
            // onTapDown: (details) => setState(() {
            //   _tapPosition = details.localPosition;
            // }),
            // onTapCancel: () => setState(() => _tapPosition = null),
            // onTapUp: (_) {
            //   // Fire callback event and reset _tapPosition
            //   if (widget.onTap != null) {
            //     _fireOnTapEvent();
            //   }
            //   setState(() => _tapPosition = null);
            // },
            child: CustomPaint(
              size: size,
              painter: MyPainter(
                counterManual,
                counterAuto,
                size,
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter(this.counterManual, this.counterAuto, this.mySize);
  int counterManual;
  int counterAuto;
  Size mySize;
  int paintCount = 0;

  @override
  void paint(Canvas canvas, Size size) {
    logger.i('paint: ${paintCount++}');
    // NOTE: 筆の設定
    final paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;
    canvas.drawRect(
      // クリップされた領域に黄色の色合いを適用します (デバッグ用)
      Offset.zero & Size(mySize.width, mySize.height),
      Paint()..color = Colors.yellow[100]!,
    );
    // NOTE: Returnすると描画されない
    if (counterManual == 1) {
      return;
    }
    if (counterManual == 3) {
      canvas
        ..translate(size.width / 2 - 100, size.height / 2)
        ..drawCircle(
          const Offset(0, 0),
          50,
          paint,
        );
      return;
    }
    canvas
      ..drawRect(
        // クリップされた領域に黄色の色合いを適用します (デバッグ用)
        Offset.zero & Size(mySize.width, mySize.height),
        Paint()..color = Colors.yellow[100]!,
      )
      // NOTE: オフセットゼロ
      ..drawCircle(
        const Offset(0, 0),
        50,
        paint,
      )
      // NOTE: 画面中心に描画
      ..drawCircle(
        Offset(size.width / 2, size.height / 2),
        50,
        paint,
      );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
