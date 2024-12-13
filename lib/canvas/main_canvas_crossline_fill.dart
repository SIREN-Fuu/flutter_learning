import 'dart:math' as math;

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
        appBar: AppBar(title: const Text('Custom Paint Example')),
        body: Center(
          child: CustomPaint(
            size: const Size(400, 400),
            painter: LineChartPainter(),
          ),
        ),
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final aLinePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    final bLinePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    final aLinePoints = <Offset>[
      Offset(0, size.height * 0.8),
      Offset(size.width * 0.25, size.height * 0.2),
      Offset(size.width * 0.5, size.height * 0.6),
      Offset(size.width * 0.75, size.height * 0.1),
      Offset(size.width, size.height * 0.4),
    ];

    final bLinePoints = <Offset>[
      Offset(0, size.height * 0.6),
      Offset(size.width * 0.25, size.height * 0.8),
      Offset(size.width * 0.5, size.height * 0.4),
      Offset(size.width * 0.75, size.height * 0.5),
      Offset(size.width, size.height * 0.3),
    ];

    final aPath = Path()..moveTo(aLinePoints[0].dx, aLinePoints[0].dy);
    final bPath = Path()..moveTo(bLinePoints[0].dx, bLinePoints[0].dy);

    for (var i = 1; i < aLinePoints.length; i++) {
      aPath.lineTo(aLinePoints[i].dx, aLinePoints[i].dy);
      bPath.lineTo(bLinePoints[i].dx, bLinePoints[i].dy);
    }

    for (var i = 0; i < aLinePoints.length - 1; i++) {
      final a1 = aLinePoints[i];
      final a2 = aLinePoints[i + 1];
      final b1 = bLinePoints[i];
      final b2 = bLinePoints[i + 1];

      // 交点を計算
      final intersection = _calculateIntersection(a1, a2, b1, b2);

      if (intersection != null) {
        final trianglePath = Path()
          ..moveTo(a1.dx, a1.dy)
          ..lineTo(intersection.dx, intersection.dy)
          ..lineTo(b1.dx, b1.dy)
          ..close();

        final trianglePaint = Paint()
          ..color = a1.dy < b1.dy
              ? Colors.pink.withValues(alpha:  0.3)
              : Colors.lightBlue.withValues(alpha:0.3);

        canvas.drawPath(trianglePath, trianglePaint);

        final quadPath = Path()
          ..moveTo(intersection.dx, intersection.dy)
          ..lineTo(a2.dx, a2.dy)
          ..lineTo(b2.dx, b2.dy)
          ..lineTo(b1.dx, b1.dy)
          ..close();

        final quadPaint = Paint()
          ..color = a2.dy < b2.dy
              ? Colors.pink.withValues(alpha:0.3)
              : Colors.lightBlue.withValues(alpha:0.3);

        canvas.drawPath(quadPath, quadPaint);
      } else {
        final fillPath = Path()
          ..moveTo(a1.dx, a1.dy)
          ..lineTo(a2.dx, a2.dy)
          ..lineTo(b2.dx, b2.dy)
          ..lineTo(b1.dx, b1.dy)
          ..close();

        final fillPaint = Paint()
          ..color = a1.dy < b1.dy
              ? Colors.pink.withValues(alpha:0.3)
              : Colors.lightBlue.withValues(alpha:0.3);

        canvas.drawPath(fillPath, fillPaint);
      }
    }

    canvas
      ..drawPath(aPath, aLinePaint)
      ..drawPath(bPath, bLinePaint);
  }

  Offset? _calculateIntersection(Offset a1, Offset a2, Offset b1, Offset b2) {
    final a1Dx = a2.dx - a1.dx;
    final a1Dy = a2.dy - a1.dy;
    final b1Dx = b2.dx - b1.dx;
    final b1Dy = b2.dy - b1.dy;

    final denominator = a1Dx * b1Dy - a1Dy * b1Dx;
    if (denominator == 0) {
      return null; // 平行
    }

    final numerator = (a1.dy - b1.dy) * b1Dx - (a1.dx - b1.dx) * b1Dy;
    final r = numerator / denominator;
    final intersectionX = a1.dx + r * a1Dx;
    final intersectionY = a1.dy + r * a1Dy;

    if (intersectionX < math.min(a1.dx, a2.dx) ||
        intersectionX > math.max(a1.dx, a2.dx) ||
        intersectionX < math.min(b1.dx, b2.dx) ||
        intersectionX > math.max(b1.dx, b2.dx)) {
      return null;
    }

    return Offset(intersectionX, intersectionY);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
