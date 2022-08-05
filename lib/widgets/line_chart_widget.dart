import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.only(left: 15),
        height: 300,
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false,)
              )
            ),
            backgroundColor: Colors.white10,
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 100,
            borderData: FlBorderData(
              show: false,
            ),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (_) => FlLine(
                color: const Color(0xFF37434D).withOpacity(0.2),
                strokeWidth: 0.8
              ),
              drawVerticalLine: false,
            ),
            lineBarsData: [
              LineChartBarData(
                  spots: const [
                    FlSpot(0, 25),
                    FlSpot(2, 45),
                    FlSpot(4, 60),
                    FlSpot(6, 75),
                    FlSpot(8, 80),
                    FlSpot(10, 65),
                    FlSpot(11, 85),
                  ],
                  dotData: FlDotData(
                    show: false,
                  ),
                  isStrokeCapRound: true,
                  color: Colors.red,
                  curveSmoothness: 1.5,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red.withOpacity(0.5),
                          Colors.red.withOpacity(0.0),
                        ]),
                  )),
            ],
          ),
        ),
      );
}
