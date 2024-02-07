import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../plugins/logger.dart';

//
// 画面 C
//
class PageGcC extends ConsumerWidget {
  const PageGcC({super.key});

  // 戻るボタンを押したとき
  void pop(BuildContext context) {
    // 前の画面 へ戻る
    context.pop();
  }

  // 進むボタンを押したとき
  void goA(BuildContext context) {
    // 画面 Aページへ進む
    context.go('/');
  }

  // 進むボタンを押したとき
  void goD(BuildContext context) {
    // 画面 Aページへ進む
    context.go('/d');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.e('PageC: build()');

    //final router = ref.read(goRouterProvider);

    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('画面C'),
      //automaticallyImplyLeading: false,
    );

    // 戻るボタン
    final backButton = ElevatedButton(
      onPressed: () => pop(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text('<= pop 戻る'),
    );

    // 戻るボタン
    final goDButton = ElevatedButton(
      onPressed: () => goD(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('Go-D-Page >'),
    );

    // 戻るボタン
    final goButton = ElevatedButton(
      onPressed: () => goA(context),
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
            goDButton,
            goButton,
          ],
        ),
      ),
    );
  }
}
