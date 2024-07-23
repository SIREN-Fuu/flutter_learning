import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OrientationListener(),
    );
  }
}

class OrientationListener extends StatefulWidget {
  const OrientationListener({super.key});

  @override
  OrientationListenerState createState() => OrientationListenerState();
}

class OrientationListenerState extends State<OrientationListener>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    // 画面のサイズが変わった（向きが変わった）時に呼ばれる
    final mediaQueryData = MediaQuery.of(context);
    if (mediaQueryData.orientation == Orientation.landscape ||
        mediaQueryData.orientation == Orientation.portrait) {
      // 横画面になった時の処理
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }
  }

  void _showDialog() {
    showDialog<AlertDialog>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog Title'),
          content: const Text('This is a sample dialog.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Listener Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showDialog,
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}
