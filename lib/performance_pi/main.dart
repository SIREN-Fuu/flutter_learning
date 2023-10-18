import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'π Calculation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PiCalculationPage(),
    );
  }
}

class PiCalculationPage extends StatefulWidget {
  const PiCalculationPage({super.key});

  @override
  PiCalculationPageState createState() => PiCalculationPageState();
}

class PiCalculationPageState extends State<PiCalculationPage> {
  double? _piResult;
  String _executionTime = 'Execution time will be displayed here.';

  double arctanMachin(double x, int terms) {
    var sum = 0.0;
    var sign = 1.0;
    for (var k = 0; k < terms; k++) {
      final term = sign / (2 * k + 1) * pow(x, 2 * k + 1);
      sum += term;
      sign = -sign;
    }
    return sum;
  }

  double machinFormula(int terms) {
    return 4 *
        (4 * arctanMachin(1.0 / 5, terms) - arctanMachin(1.0 / 239, terms));
  }

  void _calculatePi() {
    final stopwatch = Stopwatch()..start();
    // 10億項まで計算 50億項までの計算なら凡そ1分程度
    final pi = machinFormula(100000000);
    stopwatch.stop();

    setState(() {
      _piResult = pi;
      _executionTime = 'Execution time: ${stopwatch.elapsedMilliseconds}ms';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('π Calculation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _calculatePi,
              child: const Text('Start π Calculation'),
            ),
            const SizedBox(height: 20),
            Text(
              _piResult != null
                  ? 'Estimated π: $_piResult'
                  : 'π will be displayed here.',
            ),
            const SizedBox(height: 20),
            Text(_executionTime),
          ],
        ),
      ),
    );
  }
}
