import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CallBack Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('コールバックSample'),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildVoidCallbackButton(
          () => debugPrint('コールバックボタンが押されました'),
        ),
        _buildBigGreenButton(
          () => debugPrint('大きい緑のボタンが押されました'),
        ),
      ],
    );
  }

  Widget _buildVoidCallbackButton(VoidCallback onTapped) {
    return ElevatedButton(
      onPressed: onTapped,
      child: const Text('コールバック'),
    );
  }

  Widget _buildBigGreenButton(VoidCallback onTapped) {
    return SizedBox(
      width: 200,
      height: 150,
      child: _GreenButton(
        onTapped: onTapped,
      ),
    );
  }
}

class _GreenButton extends StatelessWidget {
  const _GreenButton({
    this.onTapped,
  });

  final VoidCallback? onTapped;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.greenAccent),
      ),
      onPressed: onTapped,
      child: const Text('大きな緑ボタン'),
    );
  }
}
