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
  // 水平線のY座標を保持する変数
  double lineY = 100.0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (details) {
          final touchPointY = details.localPosition.dy;
          // タップしたY座標が水平線の近くかどうか判断（簡易的な判定）
          if ((touchPointY - lineY).abs() <= 20.0) {
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
          // 水平線が選択されている場合、Y座標を更新
          if (isSelected) {
            setState(() {
              lineY = details.localPosition.dy;
            });
          }
        },
        onPanEnd: (details) {
          setState(() {
            isSelected = false;
          });
        },
        child: CustomPaint(
          painter: LinePainter(
            lineY: lineY,
            isSelected: isSelected,
          ),
          child: Container(),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  LinePainter({
    required this.lineY,
    required this.isSelected,
  });

  final double lineY;
  final bool isSelected;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = isSelected ? Colors.red : Colors.blue
      ..strokeWidth = 5;
    // 水平線を描画
    canvas.drawLine(Offset(0, lineY), Offset(size.width, lineY), paint);
  }

  @override
  bool shouldRepaint(covariant LinePainter oldDelegate) {
    return lineY != oldDelegate.lineY || isSelected != oldDelegate.isSelected;
  }
}
