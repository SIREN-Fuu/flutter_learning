import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//
// 画面 C
//
class PageC extends StatelessWidget {
  const PageC({super.key});

  // 戻るボタンを押したとき
  void pop(BuildContext context) {
    // 前の画面 へ戻る
    context.pop();
  }

  // 進むボタンを押したとき
  void go(BuildContext context) {
    // 画面 Aページへ進む
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面C'),
      automaticallyImplyLeading: false,
    );

    // 戻るボタン
    final backButton = ElevatedButton(
      onPressed: () => pop(context),
      // MEMO: primary は古くなったので backgroundColor へ変更しました
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text('<= pop 戻る'),
    );

    // 戻るボタン
    final goButton = ElevatedButton(
      onPressed: () => go(context),
      // MEMO: primary は古くなったので backgroundColor へ変更しました
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('Go-A-Page >'),
    );

    // 画面全体
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            backButton,
            goButton,
          ],
        ),
      ),
    );
  }
}
