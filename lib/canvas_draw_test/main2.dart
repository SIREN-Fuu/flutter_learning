import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: CustomPaint(
        size: const Size(double.infinity, double.infinity), // キャンバスのサイズ
        painter: MyCustomPainter(),
      ),
    );
  }
}

// カスタムペインタークラス
class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white // 線の色
      ..strokeWidth = 1.0; // 線の太さ

    // 最初の直線を描画
    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width, size.height),
      paint,
    );

    // 微妙に位置をずらして二つ目の直線を描画
    const offset = 10.0; // ずらす距離
    canvas.drawLine(
      const Offset(0 + offset, 0),
      Offset(size.width, size.height - offset),
      paint,
    );

    // drawPathを使っても同様にずらすことができます
    final path = Path()
      ..moveTo(0 + offset * 2, 0) // さらにずらす
      ..lineTo(size.width - offset * 2, size.height); // 逆方向にずらす
    // 二つ目のパスを異なる色で描画して区別しやすくする
    final paint2 = Paint()
      ..color = Colors.red // 線の色を変える
      ..strokeWidth = 4.0; // 線の太さ
    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
