// ラインの逐次移動

import 'dart:math' as math;

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
  Offset start = const Offset(100, 100);
  Offset end = const Offset(200, 200);
  bool isDraggingStart = false;
  bool isDraggingEnd = false;
  bool isDraggingLine = false;
  bool isSelected = false;
  Offset? dragStartPoint; // 追加: ドラッグ開始時のマウスポイント

  void _updateLine(Offset newPosition) {
    if (isSelected && dragStartPoint != null) {
      // 編集可能状態かつドラッグ開始ポイントが設定されている
      setState(() {
        if (isDraggingStart || isDraggingEnd) {
          final relativePosition = newPosition - dragStartPoint!;
          if (isDraggingStart) {
            start += relativePosition;
          } else if (isDraggingEnd) {
            end += relativePosition;
          }
          dragStartPoint = newPosition; // ドラッグ開始ポイントを更新
        } else if (isDraggingLine) {
          final dx = newPosition.dx - dragStartPoint!.dx;
          final dy = newPosition.dy - dragStartPoint!.dy;
          start = start.translate(dx, dy);
          end = end.translate(dx, dy);
          dragStartPoint = newPosition; // ドラッグ開始ポイントを更新
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (details) {
          final touchPoint = details.localPosition;
          if (_isTouchingCircle(touchPoint, start) ||
              _isTouchingCircle(touchPoint, end) ||
              _isTouchingLine(touchPoint)) {
            setState(() => isSelected = true);
          } else {
            setState(() => isSelected = false);
          }
        },
        onPanStart: (details) {
          final touchPoint = details.localPosition;
          dragStartPoint = touchPoint; // ドラッグ開始ポイントを設定
          if (isSelected) {
            if (_isTouchingCircle(touchPoint, start)) {
              isDraggingStart = true;
            } else if (_isTouchingCircle(touchPoint, end)) {
              isDraggingEnd = true;
            } else if (_isTouchingLine(touchPoint)) {
              isDraggingLine = true;
            }
          }
        },
        onPanUpdate: (details) {
          _updateLine(details.localPosition);
        },
        onPanEnd: (details) {
          setState(() {
            isDraggingStart = false;
            isDraggingEnd = false;
            isDraggingLine = false;
            dragStartPoint = null; // ドラッグ開始ポイントをクリア
          });
        },
        child: CustomPaint(
          painter: LinePainter(
            start: start,
            end: end,
            isSelected: isSelected,
          ),
          child: Container(),
        ),
      ),
    );
  }

  bool _isTouchingCircle(Offset touchPoint, Offset circleCenter) {
    return (touchPoint - circleCenter).distance <= 20.0; // Circle radius
  }

  bool _isTouchingLine(Offset touchPoint) {
    const lineThickness = 10.0;
    final dx = end.dx - start.dx;
    final dy = end.dy - start.dy;
    final length = math.sqrt(dx * dx + dy * dy);
    final sinTheta = dy / length;
    final cosTheta = dx / length;
    final pointTranslated = touchPoint - start;
    final localX =
        pointTranslated.dx * cosTheta + pointTranslated.dy * sinTheta;
    final localY =
        pointTranslated.dy * cosTheta - pointTranslated.dx * sinTheta;
    return localX >= 0 && localX <= length && localY.abs() <= lineThickness / 2;
  }
}

class LinePainter extends CustomPainter {
  LinePainter({
    required this.start,
    required this.end,
    required this.isSelected,
  });
  final Offset start;
  final Offset end;
  final bool isSelected;

  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = isSelected ? Colors.red : Colors.blue
      ..strokeWidth = 5;
    canvas.drawLine(start, end, linePaint);

    if (isSelected) {
      final circlePaint = Paint()..color = Colors.green;
      canvas
        ..drawCircle(start, 20, circlePaint)
        ..drawCircle(end, 20, circlePaint);
    }
  }

  @override
  bool shouldRepaint(covariant LinePainter oldDelegate) {
    return start != oldDelegate.start ||
        end != oldDelegate.end ||
        isSelected != oldDelegate.isSelected;
  }
}
