import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:intl/intl.dart';

import '../plugins/logger.dart';

const apiKey = 'Please API Key';

void main() => runApp(const MyApp());

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

Future<void> gemini() async {
  final now = DateTime.now();
  final outputFormat = DateFormat('yyyy年MM月dd日');
  final date = outputFormat.format(now);

  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  // final prompt = '$dateのドル円の動きを予想してください';
  // final prompt = 'あなたは優秀な経済アナリストです。 本日$dateのドル円相場について影響を受けるものを教えてください。';
  final prompt = '「本日$dateのドル円相場」はどのような値動きとなりそうか予想してください';
  logger.d(prompt);
  final content = [Content.text(prompt)];
  final response = await model.generateContent(content);
  logger
    ..d('--------------')
    ..d(response.text);
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
  int _counter = 0;

  @override
  void initState() {
    // 初期化処理
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    gemini();
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
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
