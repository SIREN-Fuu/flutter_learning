import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Bottom Sheet Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  late PersistentBottomSheetController _bottomSheetController;
  bool _isBottomSheetShown = false; // ボトムシートの状態を保持する

  void _showBottomSheet(BuildContext context) {
    if (!_isBottomSheetShown) {
      _bottomSheetController = Scaffold.of(context).showBottomSheet(
        (context) => Container(
          height: 200,
          color: Colors.blue[100],
          child: Center(
            child: ElevatedButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => const DetailPage()),
                );
              },
              child: const Text('Go to Detail Page'),
            ),
          ),
        ),
      );
      _isBottomSheetShown = true; // ボトムシートが表示されたことを記録
      _bottomSheetController.closed.then((_) {
        _isBottomSheetShown = false; // ボトムシートが閉じられたら状態をリセット
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              child: const Text('Show Bottom Sheet'),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text('This is the detail page'),
      ),
    );
  }
}
