import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Triangle Comparison')),
        body: const Center(
          child: TriangleWidget(),
        ),
      ),
    ),
  );
}

class TriangleWidget extends StatelessWidget {
  const TriangleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPaint(
          painter: TrianglePainterWithScale(),
          child: const SizedBox(width: 500, height: 500),
        ),
        const SizedBox(width: 20),
        CustomPaint(
          painter: TrianglePainterWithoutScale(),
          child: const SizedBox(width: 500, height: 500),
        ),
      ],
    );
  }
}

class TrianglePainterWithScale extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    // スケールアップ
    canvas
      ..save()
      ..scale(2.0, 2.0);

    // 滲みテスト
    final path = Path()
      ..moveTo(size.width / 2 + 0.5, 0)
      ..lineTo(size.width / 2 + 0.5, size.height / 2 + 0.5)
      ..lineTo(0, size.height / 2 + 0.5)
      ..close();

    canvas
      ..drawPath(path, paint)

      // スケールダウン
      ..restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class TrianglePainterWithoutScale extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
