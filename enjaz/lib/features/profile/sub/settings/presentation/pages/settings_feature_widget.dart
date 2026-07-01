import 'package:enjaz/core/extensions/theme_extensions.dart';
import 'package:enjaz/features/profile/presentation/widgets/profile_section_title.dart';
import 'package:enjaz/features/profile/sub/settings/presentation/widgets/settings_element_widget.dart';
import 'package:enjaz/features/sub/signout/presentation/pages/signout_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:enjaz/features/profile/sub/settings/presentation/cubit/settings_cubit.dart';

class SettingsFeatureWidget extends StatelessWidget {
  const SettingsFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Builder(
      builder: (context) {
        final _ = context.read<SettingsCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "الإعدادات",
                style: context.theme.textTheme.displaySmall,
              ),
            ),
            Gap(8),
            SettingsElementWidget(
              label: "المظهر",
              switchValue: isLightTheme,
              iconSwitchOn: Icons.light_mode,
              iconSwitchOff: Icons.dark_mode,
              colorSwitchOn: Color.fromARGB(255, 199, 179, 0),
              colorSwitchOff: Colors.deepPurple,
              onChanged: (value) {
                context.read<SettingsCubit>().changeTheme(value);
              },
            ),
            Divider(),
            SignoutFeatureWidget(),
          ],
        );
      },
    );
  }
}
