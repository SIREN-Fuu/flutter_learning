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
        body: HitTestRectWidget(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter() : rect = const Rect.fromLTWH(50, 50, 100, 100);
  final Rect rect;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  @override
  bool hitTest(Offset position) {
    return rect.contains(position);
  }
}

class HitTestRectWidget extends StatefulWidget {
  const HitTestRectWidget({super.key});

  @override
  HitTestRectWidgetState createState() => HitTestRectWidgetState();
}

class HitTestRectWidgetState extends State<HitTestRectWidget> {
  final GlobalKey _paintKey = GlobalKey();
  String _hitTestResult = 'Outside Rect';

  void _updateHitTestResult(Offset position) {
    final renderBox =
        _paintKey.currentContext!.findRenderObject()! as RenderBox;
    final localPosition = renderBox.globalToLocal(position);
    final customPaint = _paintKey.currentWidget! as CustomPaint;
    final painter = customPaint.painter! as MyPainter;

    setState(() {
      _hitTestResult =
          painter.hitTest(localPosition) ? 'Inside Rect' : 'Outside Rect';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          key: _paintKey,
          painter: MyPainter(),
          child: Center(
            child: Text(
              _hitTestResult,
              style: const TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ),
        Positioned.fill(
          child: Listener(
            onPointerDown: (PointerDownEvent event) {
              _updateHitTestResult(event.position);
            },
            child: GestureDetector(
              onTapDown: (TapDownDetails details) {
                _updateHitTestResult(details.globalPosition);
              },
              behavior: HitTestBehavior.translucent,
              child: Container(),
            ),
          ),
        ),
      ],
    );
  }
}
