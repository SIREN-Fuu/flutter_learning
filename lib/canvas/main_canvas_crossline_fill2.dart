// ignore_for_file: unreachable_from_main

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CustomPainter Example'),
        ),
        body: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final paintSize = constraints.biggest;
                  final painterParams = PainterParams(
                    paintSize: paintSize,
                  );
                  return RepaintBoundary(
                    child: CustomPaint(
                      size: paintSize,
                      painter: MyPainter(
                        paramsList: painterParams,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({
    required this.paramsList,
  });

  final PainterParams paramsList;

  @override
  void paint(Canvas canvas, Size size) {
    final paintBlue = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke;

    final paintFillBlue = Paint()
      ..color = Colors.blue.withValues(alpha:0.5)
      ..style = PaintingStyle.fill;

    final paintFillRed = Paint()
      ..color = Colors.red.withValues(alpha:0.5)
      ..style = PaintingStyle.fill;

    final centerY = size.height / 2;

    // path1の頂点リスト
    final path1Points = <Offset>[
      Offset(0, centerY + 50),
      Offset(50, centerY - 50),
      Offset(100, centerY - 150),
      Offset(150, centerY - 150),
      Offset(200, centerY - 200),
      Offset(250, centerY - 250),
      Offset(300, centerY - 300),
      Offset(350, centerY + 30),
      Offset(400, centerY + 40),
      Offset(450, centerY + 45),
      Offset(500, centerY + 50),
      Offset(550, centerY + 55),
      Offset(600, centerY + 60),
      Offset(650, centerY + 65),
      Offset(700, centerY + 70),
    ];

    // path2の頂点リスト
    final path2Points = <Offset>[
      Offset(0, centerY),
      Offset(50, centerY),
      Offset(100, centerY),
      Offset(150, centerY),
      Offset(200, centerY),
      Offset(250, centerY),
      Offset(300, centerY),
      Offset(350, centerY - 100),
      Offset(400, centerY - 100),
      Offset(450, centerY - 100),
      Offset(500, centerY - 100),
      Offset(550, centerY + 100),
      Offset(600, centerY + 100),
      Offset(650, centerY + 50),
      Offset(700, centerY + 50),
    ];

    // 交差点を見つける関数
    Offset? findIntersection(Offset p1, Offset p2, Offset p3, Offset p4) {
      final s1X = p2.dx - p1.dx;
      final s1Y = p2.dy - p1.dy;
      final s2X = p4.dx - p3.dx;
      final s2Y = p4.dy - p3.dy;

      final s = (-s1Y * (p1.dx - p3.dx) + s1X * (p1.dy - p3.dy)) /
          (-s2X * s1Y + s1X * s2Y);
      final t = (s2X * (p1.dy - p3.dy) - s2Y * (p1.dx - p3.dx)) /
          (-s2X * s1Y + s1X * s2Y);

      if (s >= 0 && s <= 1 && t >= 0 && t <= 1) {
        final iX = p1.dx + (t * s1X);
        final iY = p1.dy + (t * s1Y);
        return Offset(iX, iY);
      }

      return null;
    }

    // 塗りつぶしパスを作成
    final fillPathsBlue = <Path>[];
    final fillPathsRed = <Path>[];

    for (var i = 0; i < path1Points.length - 1; i++) {
      final p1Start = path1Points[i];
      final p1End = path1Points[i + 1];
      final p2Start = path2Points[i];
      final p2End = path2Points[i + 1];

      if (p1Start.dy != p2Start.dy || p1End.dy != p2End.dy) {
        final path = Path()
          ..moveTo(p1Start.dx, p1Start.dy)
          ..lineTo(p1End.dx, p1End.dy)
          ..lineTo(p2End.dx, p2End.dy)
          ..lineTo(p2Start.dx, p2Start.dy)
          ..close();

        if (p1Start.dy < p2Start.dy && p1End.dy < p2End.dy) {
          fillPathsBlue.add(path);
        } else if (p1Start.dy > p2Start.dy && p1End.dy > p2End.dy) {
          fillPathsRed.add(path);
        } else {
          final intersection = findIntersection(p1Start, p1End, p2Start, p2End);
          if (intersection != null) {
            final path1 = Path()
              ..moveTo(p1Start.dx, p1Start.dy)
              ..lineTo(intersection.dx, intersection.dy)
              ..lineTo(p2Start.dx, p2Start.dy)
              ..close();

            final path2 = Path()
              ..moveTo(p1End.dx, p1End.dy)
              ..lineTo(intersection.dx, intersection.dy)
              ..lineTo(p2End.dx, p2End.dy)
              ..close();

            if (p1Start.dy < p2Start.dy) {
              fillPathsBlue.add(path1);
              fillPathsRed.add(path2);
            } else {
              fillPathsRed.add(path1);
              fillPathsBlue.add(path2);
            }
          }
        }
      }
    }

    // 塗りつぶし
    for (final path in fillPathsBlue) {
      canvas.drawPath(path, paintFillBlue);
    }

    for (final path in fillPathsRed) {
      canvas.drawPath(path, paintFillRed);
    }

    // path1を描画
    final path1 = Path();
    for (var i = 0; i < path1Points.length; i++) {
      if (i == 0) {
        path1.moveTo(path1Points[i].dx, path1Points[i].dy);
      } else {
        path1.lineTo(path1Points[i].dx, path1Points[i].dy);
      }
    }

    // path2を描画
    final path2 = Path();
    for (var i = 0; i < path2Points.length; i++) {
      if (i == 0) {
        path2.moveTo(path2Points[i].dx, path2Points[i].dy);
      } else {
        path2.lineTo(path2Points[i].dx, path2Points[i].dy);
      }
    }

    canvas.drawPath(path1, paintBlue);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class PainterParams {
  PainterParams({
    required this.paintSize,
  });

  /// CustomPainter全体のサイズ
  final Size paintSize;
}
