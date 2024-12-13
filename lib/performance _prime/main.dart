import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Calculation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PrimeCalculationPage(),
    );
  }
}

class PrimeCalculationPage extends StatefulWidget {
  const PrimeCalculationPage({super.key});

  @override
  PrimeCalculationPageState createState() => PrimeCalculationPageState();
}

class PrimeCalculationPageState extends State<PrimeCalculationPage> {
  List<int>? _primes;
  String _executionTime = 'Execution time will be displayed here.';

  bool isPrime(int n) {
    if (n <= 1) {
      return false;
    }
    for (var i = 2; i <= (n / 2).floor(); i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  List<int> calculatePrimes(int limit) {
    final primes = <int>[];
    for (var i = 2; i <= limit; i++) {
      if (isPrime(i)) {
        primes.add(i);
      }
    }
    return primes;
  }

  void _startCalculation() {
    final stopwatch = Stopwatch()..start();
    // 20万までの素数を計算
    final primes = calculatePrimes(200000);
    stopwatch.stop();

    setState(() {
      _primes = primes;
      _executionTime = 'Execution time: ${stopwatch.elapsedMilliseconds}ms';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prime Calculation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _startCalculation,
              child: const Text('Start Prime Calculation'),
            ),
            const SizedBox(height: 20),
            Text(
              _primes != null
                  ? 'Number of primes found: ${_primes!.length}'
                  : 'Primes will be displayed here.',
            ),
            const SizedBox(height: 20),
            Text(_executionTime),
          ],
        ),
      ),
    );
  }
}
