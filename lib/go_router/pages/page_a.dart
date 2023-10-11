import 'package:flutter/material.dart';
import 'package:flutter_learning/go_router/dialogs/warn.dart';
import 'package:go_router/go_router.dart';

//
// 画面 A
//
class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.red,
      title: const Text('画面 A'),
    );

    // 進むボタン
    final pushButton = ElevatedButton(
      onPressed: () => context.push('/b'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text('Push 進む >'),
    );

    // Goボタン
    final goButton = ElevatedButton(
      onPressed: () => context.go('/c'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('Go C-Page >'),
    );

    // Warningボタン
    final warningButton = ElevatedButton(
      onPressed: () => showWarnDialog(
        context,
        'Warning Dialog',
      ),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text('Warning Dialog'),
    );

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            pushButton,
            warningButton,
            goButton,
          ],
        ),
      ),
    );
  }
}
