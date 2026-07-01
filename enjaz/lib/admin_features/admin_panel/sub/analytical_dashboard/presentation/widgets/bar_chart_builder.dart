import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartBuilder extends StatelessWidget {
  const BarChartBuilder({super.key, required this.data});

  final List<UniversityStatEntity> data;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: true, reservedSize: 30),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (val, meta) => Text(
                data[val.toInt()].code,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
        barGroups: data
            .asMap()
            .entries
            .map(
              (e) => BarChartGroupData(
                x: e.key,
                barRods: [
                  BarChartRodData(
                    toY: e.value.clubCount.toDouble(),
                    color: Colors.blue,
                    width: 15,
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
