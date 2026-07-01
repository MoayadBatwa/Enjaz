import 'package:enjaz/core/extensions/font_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MetricData {
  final String value;
  final String label;
  final IconData icon;
  final Color color;
  MetricData({required this.label, required this.value, required this.icon, required this.color});
}

class MetricRow extends StatelessWidget {
  final List<MetricData> metrics;
 const MetricRow({super.key, required this.metrics});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: .horizontal,
      children: metrics
          .map(
            (metric) => SizedBox(
              width: 40.sizeSW(max: 200),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Icon(metric.icon, color: metric.color, size: 20),
                     Gap(8),
                      Text(
                        metric.value,
                        style: context.theme.textTheme.labelLarge
                      ),
                      Text(
                        metric.label,
                        style: context.theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
