import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomBarChart extends StatelessWidget {
  final List<String> labels;
  final List<List<double>> series;
  final List<Color> colors;
  final double maxY;
  final String suffix;

  const CustomBarChart({
    super.key,
    required this.labels,
    required this.series,
    required this.colors,
    required this.maxY,
    this.suffix = '',
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: maxY,
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) => FlLine(
            color: const Color.fromARGB(20, 158, 158, 158),
            strokeWidth: 1,
          ),
        ),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 35,
              getTitlesWidget: (v, _) => Text(
                '${v.toInt()}$suffix',
                style: const TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (v, _) {
                if (v < 0 || v >= labels.length) return const SizedBox();
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    labels[v.toInt()],
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ),
        barGroups: List.generate(labels.length, (i) {
          return BarChartGroupData(
            x: i,
            barsSpace: 4,
            barRods: List.generate(series.length, (j) {
              return BarChartRodData(
                toY: series[j][i],
                color: colors[j],
                width: series.length > 1 ? 8 : 16,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: maxY,
                  color: const Color.fromARGB(10, 158, 158, 158),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}