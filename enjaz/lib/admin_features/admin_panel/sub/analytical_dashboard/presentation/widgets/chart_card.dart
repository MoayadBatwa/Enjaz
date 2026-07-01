import 'package:enjaz/core/extensions/font_extensions.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class ChartCard extends StatelessWidget {
  final String title;
  final Widget child;
  const ChartCard({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              title,
              style:  context.theme.textTheme.labelLarge
            ),
            Gap(8),
            Container(
              height: 30.sizeSH(min: 300),
              width: 80.sw,
              padding:  EdgeInsets.fromLTRB(16, 24, 16, 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
