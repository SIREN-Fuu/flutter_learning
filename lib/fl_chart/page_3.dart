import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'resources/app_colors.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Color> gradientPlusColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  List<Color> gradientMinusColors = [
    AppColors.contentColorRed,
    AppColors.contentColorRed,
  ];

  int chartNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample: Any Chart'),
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
              child: LineChart(
                switch (chartNumber) {
                  0 => plusData(),
                  1 => minusData(),
                  _ => avgData(),
                },
              ),
            ),
          ),
          SizedBox(
            child: TextButton(
              onPressed: () {
                setState(() {
                  chartNumber == 2 ? chartNumber = 0 : chartNumber++;
                });
              },
              child: Text(
                'Chart Change',
                style: TextStyle(
                  fontSize: 12,
                  color: switch (chartNumber) {
                    0 => Colors.red,
                    1 => Colors.blue,
                    _ => Colors.black,
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('time2', style: style);
      case 5:
        text = const Text('time5', style: style);
      case 8:
        text = const Text('time8', style: style);
      default:
        text = const Text('', style: style);
    }

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = 'price1';
      case 3:
        text = 'price3';
      case 5:
        text = 'price5';
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
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

  LineChartData minusData() {
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
            FlSpot(18, 0),
          ],
          isCurved: false,
          gradient: LinearGradient(
            colors: [
              ColorTween(
                begin: gradientMinusColors[0],
                end: gradientMinusColors[1],
              ).lerp(0.2)!,
              ColorTween(
                begin: gradientMinusColors[0],
                end: gradientMinusColors[1],
              ).lerp(0.2)!,
            ],
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          aboveBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientMinusColors[0].withAlpha(0),
                gradientMinusColors[1].withAlpha(130),
              ],
            ),
          ),
        ),
      ],
      extraLinesData: ExtraLinesData(
        horizontalLines: [
          HorizontalLine(
            color: gradientMinusColors[1],
            dashArray: [4, 4],
            strokeWidth: 1,
            y: 5,
          ),
        ],
      ),
    );
  }

  LineChartData avgData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientPlusColors,
          ),
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientPlusColors
                  .map((color) => color.withValues(alpha: 0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
