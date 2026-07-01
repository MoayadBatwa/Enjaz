import 'package:enjaz/features/profile/presentation/widgets/avatar_preview_widget.dart';
import 'package:flutter/material.dart';
import 'package:enjaz/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:enjaz/core/constants/app_colors.dart';

void showAvatarSelectionDialog(BuildContext context, ProfileCubit cubit) {
  String selected = cubit.avatarType;
  final avatars = ['default', 'male', 'female'];

  showDialog(
    context: context,
    builder: (dialogContext) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text("تغيير الصورة الشخصية", textAlign: TextAlign.center),
            content: SizedBox(
              width: double.maxFinite,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: avatars.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final type = avatars[index];
                  final isSelected = selected == type;
                  return GestureDetector(
                    onTap: () => setState(() => selected = type),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isSelected
                              ? AppColors.primary
                              : Colors.grey.shade400,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: AvatarPreviewWidget(type: type),
                      ),
                    ),
                  );
                },
              ),
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () => Navigator.pop(dialogContext),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("إلغاء"),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  cubit.updateUserAvatar(selected);
                  Navigator.pop(dialogContext);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("تأكيد"),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
