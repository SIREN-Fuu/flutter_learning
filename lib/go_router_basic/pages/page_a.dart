import 'package:flutter/material.dart';
import 'package:flutter_learning/go_router_basic/dialogs/warn.dart';
import 'package:flutter_learning/plugins/logger.dart';
import 'package:go_router/go_router.dart';

//
// 画面 A
//
class PageGbA extends StatelessWidget {
  const PageGbA({super.key});

  @override
  Widget build(BuildContext context) {
    logger.d('PageA: build()');
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.red,
      title: const Text('画面 A'),
    );

    // 進むボタン
    final pushButton = ElevatedButton(
      onPressed: () => context.push('/b'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text('Push B-Page >'),
    );

    // Goボタン
    final goButton = ElevatedButton(
      onPressed: () => context.go('/b'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('Go B-Page >'),
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
            warningButton,
            pushButton,
            goButton,
          ],
        ),
      ),
    );
  }
}
