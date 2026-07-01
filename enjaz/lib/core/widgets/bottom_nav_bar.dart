import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/extensions/font_extensions.dart';
import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final user = GetIt.I<UserService>();

    final secondTab = user.isAdmin
        ? GButton(
            icon: Icons.dashboard_customize,
            text: 'إدارة المنصة',
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 1.sizeSW(max: 8),
            ),
          )
        : GButton(
            icon: Icons.cabin,
            text: 'أنديتي',
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 1.sizeSW(max: 8),
            ),
          );

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            tabBorder: Border.all(color: Colors.transparent, width: 1),
            tabActiveBorder: Border.all(color: AppColors.primary, width: 1.5),
            gap: 8,
            activeColor: AppColors.primary,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            haptic: true,
            color: AppColors.textHint,

            tabs: [
              GButton(
                icon: Icons.person,
                text: 'معلوماتي',
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 1.sizeSW(max: 8),
                ),
              ),

              secondTab,

              GButton(
                icon: Icons.groups_2_rounded,
                text: 'الاندية',
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 1.sizeSW(max: 8),
                ),
              ),

              GButton(
                icon: Icons.event_note_sharp,
                text: 'الفعاليات',
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 1.sizeSW(max: 8),
                ),
              ),
            ],

            selectedIndex: navigationShell.currentIndex,
            onTabChange: (index) {
              navigationShell.goBranch(index, initialLocation: true);
            },
          ),
        ),
      ),
      body: navigationShell,
    );
  }
}
