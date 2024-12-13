import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LineMovePage()));
}

class LineMovePage extends StatefulWidget {
  const LineMovePage({super.key});

  @override
  LineMovePageState createState() => LineMovePageState();
}

class LineMovePageState extends State<LineMovePage> {
  // 垂直線のX座標を保持する変数
  double lineX = 100.0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (details) {
          final touchPointX = details.localPosition.dx;
          // タップしたX座標が垂直線の近くかどうか判断（簡易的な判定）
          if ((touchPointX - lineX).abs() <= 20.0) {
            setState(() {
              isSelected = true;
            });
          } else {
            setState(() {
              isSelected = false;
            });
          }
        },
        onPanUpdate: (details) {
          // 垂直線が選択されている場合、X座標を更新
          if (isSelected) {
            setState(() {
              lineX = details.localPosition.dx;
            });
          }
        },
        onPanEnd: (details) {
          setState(() {
            isSelected = false;
          });
        },
        child: CustomPaint(
          painter: VerticalLinePainter(
            lineX: lineX,
            isSelected: isSelected,
          ),
          child: Container(),
        ),
      ),
    );
  }
}

class VerticalLinePainter extends CustomPainter {
  VerticalLinePainter({
    required this.lineX,
    required this.isSelected,
  });

  final double lineX;
  final bool isSelected;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = isSelected ? Colors.red : Colors.blue
      ..strokeWidth = 5;
    // 垂直線を描画
    canvas.drawLine(Offset(lineX, 0), Offset(lineX, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant VerticalLinePainter oldDelegate) {
    return lineX != oldDelegate.lineX || isSelected != oldDelegate.isSelected;
  }
}
