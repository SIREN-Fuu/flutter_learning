import 'dart:ui' as ui;

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: RibbonShapeWidget()));
}

class RibbonShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill; // 塗りつぶしスタイル

    // リボンの結び目の中心部分
    final center = Offset(size.width / 2, size.height / 2);

    // リボンのテールを構成する三角形の頂点
    final tailPoints = <Offset>[
      Offset(center.dx - 50, center.dy), // 左上
      Offset(center.dx, center.dy - 20), // 中心上
      Offset(center.dx + 50, center.dy), // 右上
      Offset(center.dx, center.dy + 100), // 下中央（テールの先端）
    ];

    // 結び目を構成する三角形の頂点
    final knotPoints = <Offset>[
      Offset(center.dx - 20, center.dy - 20), // 左上
      Offset(center.dx + 20, center.dy - 20), // 右上
      Offset(center.dx, center.dy), // 下中央
    ];

    // リボンのテール
    final tailVertices = ui.Vertices(
      ui.VertexMode.triangleFan,
      tailPoints,
    );

    // リボンの結び目
    final knotVertices = ui.Vertices(
      ui.VertexMode.triangles,
      knotPoints,
    );

    // リボンのテールと結び目を描画
    canvas
      ..drawVertices(tailVertices, ui.BlendMode.srcOver, paint)
      ..drawVertices(knotVertices, ui.BlendMode.srcOver, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RibbonShapeWidget extends StatelessWidget {
  const RibbonShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: RibbonShapePainter(),
        child: Container(),
      ),
    );
  }
}
