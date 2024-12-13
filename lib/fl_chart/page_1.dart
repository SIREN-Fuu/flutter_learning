import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'resources/app_colors.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Color> gradientPlusColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  List<Color> gradientMinusColors = [
    AppColors.contentColorRed,
    AppColors.contentColorRed,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample: Positive Chart'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2.0,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 18,
                left: 12,
                top: 24,
                bottom: 12,
              ),
              child: LineChart(plusData()),
            ),
          ),
        ],
      ),
    );
  }

  LineChartData plusData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 48,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(1, 2),
            FlSpot(2, 5),
            FlSpot(3, 3.1),
            FlSpot(4, 4),
            FlSpot(5, 3),
            FlSpot(6, 6),
            FlSpot(7, 5),
            FlSpot(8, 6),
            FlSpot(9, 4),
            FlSpot(10, 1),
            FlSpot(11, 2),
            FlSpot(12, 2),
            FlSpot(13, 3),
            FlSpot(14, 1),
            FlSpot(15, 2),
            FlSpot(16, 1),
            FlSpot(17, 2),
            FlSpot(18, 4),
          ],
          isCurved: false,
          gradient: LinearGradient(
            colors: [
              ColorTween(
                begin: gradientPlusColors[0],
                end: gradientPlusColors[1],
              ).lerp(0.2)!,
              ColorTween(
                begin: gradientPlusColors[0],
                end: gradientPlusColors[1],
              ).lerp(0.2)!,
            ],
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientPlusColors[0].withAlpha(90),
                gradientPlusColors[1].withAlpha(0),
              ],
            ),
          ),
        ),
      ],
      extraLinesData: ExtraLinesData(
        horizontalLines: [
          HorizontalLine(
            color: gradientPlusColors[1],
            dashArray: [4, 4],
            strokeWidth: 1,
            y: 2,
          ),
        ],
      ),
    );
  }
}
