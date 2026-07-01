import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/widgets/chart_card.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/widgets/custom_bar_chart.dart';
import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/presentation/widgets/metric_row.dart';
import 'package:enjaz/core/extensions/font_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class DashboardInsights extends StatelessWidget {
  const DashboardInsights({super.key, required this.data});

  final List<UniversityStatEntity> data;

  @override
  Widget build(BuildContext context) {
    final labels = data.map((u) => u.code).toList();

    double calculateMax(Iterable<double> values) => values.isEmpty
        ? 10
        : (values.reduce((a, b) => a > b ? a : b) * 1.2).ceilToDouble();

    return Column(
      children: [
        SizedBox(
          height: 12.sizeSH(min: 100),
          child: MetricRow(
            metrics: [
              MetricData(
                label: 'الجامعات',
                value: '${data.length}',
                icon: Icons.school,
                color: Color.fromARGB(255, 24, 94, 165),
              ),
              MetricData(
                label: 'إجمالي الأندية',
                value: '${data.fold(0, (s, u) => s + u.clubCount)}',
                icon: Icons.business_outlined,
                color: Color.fromARGB(255, 29, 158, 117),
              ),
              MetricData(
                label: 'إجمالي الفعاليات',
                value: '${data.fold(0, (s, u) => s + u.eventCount)}',
                icon: Icons.event,
                color: Color.fromARGB(255, 127, 119, 221),
              ),
              MetricData(
                value: '${data.fold(0, (s, u) => s + u.enrollmentCount)}',
                icon: Icons.groups,
                color: Color.fromARGB(255, 218, 221, 119),
                label: 'إجمالي المستفيدين',
              ),
            ],
          ),
        ),

        Gap(16),
        Text(
          "إحصائيات الأندية والفعاليات",
          style: context.theme.textTheme.displaySmall,
        ),
        Gap(16),

        SizedBox(
          height: 40.sizeSH(min: 380),
          child: ListView(
            scrollDirection: .horizontal,
            children: [
              ChartCard(
                title: 'عدد الأندية للجامعات',
                child: CustomBarChart(
                  labels: labels,
                  series: [data.map((u) => u.clubCount.toDouble()).toList()],
                  colors: [Color.fromARGB(255, 24, 94, 165)],
                  maxY: calculateMax(data.map((u) => u.clubCount.toDouble())),
                ),
              ),

              ChartCard(
                title: 'الفعاليات لجميع جامعة',
                child: CustomBarChart(
                  labels: labels,
                  series: [data.map((u) => u.eventCount.toDouble()).toList()],
                  colors: [Color.fromARGB(255, 29, 158, 117)],
                  maxY: calculateMax(data.map((u) => u.eventCount.toDouble())),
                ),
              ),

              ChartCard(
                title: 'أعضاء الأندية (أزرق) مقابل المسجلين (برتقالي)',
                child: CustomBarChart(
                  labels: labels,
                  series: [
                    data.map((u) => u.memberCount.toDouble()).toList(),
                    data.map((u) => u.enrollmentCount.toDouble()).toList(),
                  ],
                  colors: [
                    Color.fromARGB(255, 50, 101, 173),
                    Color.fromARGB(255, 186, 118, 23),
                  ],
                  maxY: calculateMax(data.map((u) => u.memberCount.toDouble())),
                ),
              ),

              ChartCard(
                title: 'نسب التفاعل لفعاليات الجامعة',
                child: CustomBarChart(
                  labels: labels,
                  series: [
                    data.map((u) => u.capacityUtilization * 100).toList(),
                  ],
                  colors: [Color.fromARGB(255, 99, 153, 34)],
                  maxY: 100,
                  suffix: '%',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
