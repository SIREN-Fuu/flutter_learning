import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HitTestExample(),
      ),
    );
  }
}

class HitTestExample extends StatefulWidget {
  const HitTestExample({super.key});

  @override
  HitTestExampleState createState() => HitTestExampleState();
}

class HitTestExampleState extends State<HitTestExample> {
  Color rectColor = Colors.blue;
  Color lineColor = Colors.blue;
  final GlobalKey _paintKey = GlobalKey();

  void _handleTap(Offset position) {
    final renderBox =
        _paintKey.currentContext!.findRenderObject()! as RenderBox;
    final localPosition = renderBox.globalToLocal(position);

    final painter =
        (_paintKey.currentWidget! as CustomPaint).painter! as CustomPainterBox;
    final isOnRect = painter.hitTestRect(localPosition);
    final isOnLine = painter.hitTestLine(localPosition);

    setState(() {
      rectColor = isOnRect ? Colors.red : Colors.blue;
      lineColor = isOnLine ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        _handleTap(details.globalPosition);
      },
      child: CustomPaint(
        key: _paintKey,
        painter: CustomPainterBox(rectColor, lineColor),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
        ),
      ),
    );
  }
}

class CustomPainterBox extends CustomPainter {
  CustomPainterBox(this.rectColor, this.lineColor)
      : rectPath = Path()..addRect(const Rect.fromLTWH(50, 50, 100, 100)),
        // LineのHitTestはパスが閉じている必要がある つまりLineのHitTestはできない
        linePath = Path()
          ..moveTo(300, 300)
          ..lineTo(400, 400);
  // ..lineTo(300, 400)
  // ..close();

  final Color rectColor;
  final Color lineColor;
  final Path rectPath;
  final Path linePath;

  @override
  void paint(Canvas canvas, Size size) {
    final rectPaint = Paint()
      ..color = rectColor
      ..style = PaintingStyle.fill;

    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    canvas
      ..drawPath(rectPath, rectPaint)
      ..drawPath(linePath, linePaint);
  }

  @override
  bool shouldRepaint(CustomPainterBox oldDelegate) {
    return oldDelegate.rectColor != rectColor ||
        oldDelegate.lineColor != lineColor;
  }

  bool hitTestRect(Offset position) {
    return rectPath.contains(position);
  }

  bool hitTestLine(Offset position) {
    return linePath.contains(position);
  }
}
