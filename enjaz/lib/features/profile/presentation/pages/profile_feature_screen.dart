import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/utils/navigators.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/features/profile/presentation/cubit/profile_state.dart';
import 'package:enjaz/features/profile/presentation/widgets/avatar_selection_dialog.dart';
import 'package:enjaz/features/profile/presentation/widgets/profile_avatar_widget.dart';
import 'package:enjaz/features/profile/presentation/widgets/profile_section_title.dart';
import 'package:enjaz/features/profile/sub/activity_history/presentation/pages/activity_history_feature_widget.dart';
import 'package:enjaz/features/profile/sub/profile_info/presentation/pages/profile_info_feature_widget.dart';
import 'package:enjaz/features/profile/sub/settings/presentation/pages/settings_feature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:gap/gap.dart';

class ProfileFeatureScreen extends StatelessWidget {
  const ProfileFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              final cubit = context.read<ProfileCubit>();
              if (state is ProfileSuccessState) {
                final profile = state.profile;
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Theme.of(context).cardColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => showAvatarSelectionDialog(context, cubit),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundColor: isDark
                                  ? AppColors.background
                                  : AppColors.primary,
                              child: ProfileAvatarWidget(type:cubit.avatarType),
                            ),
                          ),
                          Gap(12),
                          Text(
                            profile.name,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(5),
                          if (cubit.user.isAdmin)
                            Text(
                              "مدير النظام",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Gap(5),
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            title: ProfileSectionTitle(
                              sectionTitle: "المعلومات الشخصية",
                            ),
                            onTap: () {
                              Navigators.goTo(
                                context,
                                ProfileInfoFeatureWidget(profile: profile),
                              );
                            },
                          ),
                          if (cubit.user.isStudent) ...[
                            Divider(),
                            ActivityHistoryFeatureWidget(),
                          ],
                          Divider(),
                          SettingsFeatureWidget(),
                          Divider(),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return LoadingWidget();
            },
          ),
        ),
      ),
    );
  }
}

