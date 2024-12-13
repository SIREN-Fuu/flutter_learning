import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState();

  PainterParams pm = PainterParams(
    counter: 25,
    offSet: const Offset(25, 25),
  );

  void _incrementCounter() {
    pm
      ..counter += 25
      ..offSet = Offset(pm.counter.toDouble(), 25);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: TestPainter(
                params: pm,
              ),
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

class PainterParams {
  PainterParams({
    required this.offSet,
    required this.counter,
  });
  Offset offSet;
  int counter;

  // bool shouldRepaint(PainterParams other) {
  //   return true;
  // }
}

class TestPainter extends CustomPainter {
  TestPainter({
    required this.params,
  });
  final PainterParams params;

  int printCounter = 0;

  @override
  void paint(Canvas canvas, Size size) {
    // debugPrint('params.counter: ${params.counter}');
    debugPrint('printCounter: $printCounter');
    printCounter++;

    if (params.counter != 100000000000000) {
      final paint1 = Paint()..color = const Color(0xff638965);
      //a rectangle
      canvas
        ..drawRect(const Offset(0, 0) & const Size(100, 100), paint1)
        ..translate(size.width / 2, size.height / 2)
        ..save()
        //canvas.translate(size.width / 2, size.height / 2);
        ..drawRect(
          params.offSet & const Size(100, 100),
          paint1..color = Colors.red,
        )
        ..restore();
    }
  }

  @override
  // bool shouldRepaint(TestPainter oldDelegate) => false;
  bool shouldRepaint(TestPainter oldDelegate) => true;

  @override
  // bool shouldRebuildSemantics(TestPainter oldDelegate) => false;
  bool shouldRebuildSemantics(TestPainter oldDelegate) => true;
}
