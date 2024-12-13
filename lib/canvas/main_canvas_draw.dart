import 'dart:ui' as ui;

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
      color: Colors.white,
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
      ..color = Colors.deepOrange
      ..strokeWidth = 4.0
      ..style = PaintingStyle.fill;

    // 基本図形の描画
    // 円
    canvas.drawCircle(Offset(size.width * 0.1, size.height * 0.2), 30.0, paint);

    // 線
    paint.color = Colors.teal;
    canvas.drawLine(
      Offset(size.width * 0.2, size.height * 0.2),
      Offset(size.width * 0.8, size.height * 0.2),
      paint,
    );

    // 長方形
    paint.color = Colors.purple;
    canvas.drawRect(
      Rect.fromLTWH(
        size.width * 0.05,
        size.height * 0.3,
        size.width * 0.2,
        size.height * 0.1,
      ),
      paint,
    );

    // 角丸長方形
    paint.color = Colors.green;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          size.width * 0.3,
          size.height * 0.3,
          size.width * 0.4,
          size.height * 0.1,
        ),
        const Radius.circular(10),
      ),
      paint,
    );

    // 点
    paint.color = Colors.red;
    final points = [
      Offset(size.width * 0.5, size.height * 0.5),
      Offset(size.width * 0.6, size.height * 0.6),
      Offset(size.width * 0.7, size.height * 0.5),
    ];
    canvas.drawPoints(ui.PointMode.points, points, paint..strokeWidth = 6.0);

    // 点
    paint.color = Colors.red;
    final pointsEx = [
      Offset(size.width * 0.5, size.height * 0.3),
      Offset(size.width * 0.6, size.height * 0.4),
      Offset(size.width * 0.7, size.height * 0.5),
      Offset(size.width * 0.8, size.height * 0.6),
    ];
    canvas.drawPoints(ui.PointMode.polygon, pointsEx, paint..strokeWidth = 1.0);

    // 楕円
    paint.color = Colors.blue;
    canvas.drawOval(
      Rect.fromLTWH(
        size.width * 0.05,
        size.height * 0.5,
        size.width * 0.2,
        size.height * 0.1,
      ),
      paint,
    );

    // Verticesを描画 (単純なトライアングルを例として)
    paint.color = Colors.amber;
    final vertices = ui.Vertices(
      ui.VertexMode.triangles,
      [
        Offset(size.width * 0.8, size.height * 0.65),
        Offset(size.width * 0.9, size.height * 0.8),
        Offset(size.width * 0.7, size.height * 0.8),
      ],
    );
    canvas.drawVertices(vertices, ui.BlendMode.src, paint);

    // 緩やかな折れ線ラインの描画と塗りつぶし
    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    // ギザギザの折れ線ライン1
    final path1 = Path()
      ..moveTo(0, size.height * 0.75)
      ..lineTo(size.width * 0.25, size.height * 0.7)
      ..lineTo(size.width * 0.5, size.height * 0.75)
      ..lineTo(size.width * 0.75, size.height * 0.7)
      ..lineTo(size.width, size.height * 0.75);

    // ギザギザの折れ線ライン2
    final path2 = Path()
      ..moveTo(0, size.height * 0.85)
      ..lineTo(size.width * 0.25, size.height * 0.9)
      ..lineTo(size.width * 0.5, size.height * 0.85)
      ..lineTo(size.width * 0.75, size.height * 0.9)
      ..lineTo(size.width, size.height * 0.85);

    // パスの間を塗りつぶし
    final fillPaint = Paint()
      ..color = Colors.pink.withValues(alpha:0.5)
      ..style = PaintingStyle.fill;

    // 塗りつぶし用のパスを作成
    final fillPath = Path()
      ..addPath(path1, Offset.zero)
      ..lineTo(size.width, size.height * 0.85)
      ..lineTo(size.width * 0.75, size.height * 0.9)
      ..lineTo(size.width * 0.5, size.height * 0.85)
      ..lineTo(size.width * 0.25, size.height * 0.9)
      ..lineTo(0, size.height * 0.85)
      ..close();

    canvas
      ..drawPath(fillPath, fillPaint)

      // 線を描画
      ..drawPath(path1, linePaint)
      ..drawPath(path2, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
