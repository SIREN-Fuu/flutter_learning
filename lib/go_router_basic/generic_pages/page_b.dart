import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../plugins/logger.dart';

//
// 画面 B
//
class PageGbB extends StatelessWidget {
  const PageGbB({super.key});

  // 進むボタンを押したとき
  void pushC(BuildContext context) {
    // 画面 C へ進む
    context.push('/c');
  }

  // 進むボタンを押したとき
  void goC(BuildContext context) {
    // 画面 C へ進む
    context.go('/c');
  }

  // 戻るボタンを押したとき
  void pop(BuildContext context) {
    // 前の画面 へ戻る
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    logger.d('PageB: build()');
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.green,
      title: const Text('画面B'),
    );

    // 進むボタン
    final pushButton = ElevatedButton(
      onPressed: () => pushC(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text('Push C-Page >'),
    );

    // 進むボタン
    final goButton = ElevatedButton(
      onPressed: () => goC(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('Go C-Page >'),
    );

    // 戻るボタン
    final backButton = ElevatedButton(
      onPressed: () => pop(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text('<= pop 戻る'),
    );

    // 画面全体
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            backButton,
            pushButton,
            goButton,
          ],
        ),
      ),
    );
  }
}
