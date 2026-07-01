import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:enjaz/admin_features/universities/presentation/cubit/universities_cubit.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/presentation/pages/university_details_feature_widget.dart';
import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/extensions/theme_extensions.dart';

class UniversityCardWidget extends StatelessWidget {
  const UniversityCardWidget({super.key, required this.university});

  final UniversityEntity university;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Stack(
          children: [
            ListTile(
              title: Text(
                university.name,
                maxLines: 1,
                style: context.theme.textTheme.titleMedium,
              ),
              subtitle: Text(
                university.location,
                style: context.theme.textTheme.bodyMedium,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => UniversityDetailsFeatureWidget(
                      universityId: university.id,
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: 12,
              left: 12,
              child: IconButton(
                icon: Icon(Icons.close, size: 18, color: Colors.red),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "هل أنت متأكد من حذف الجامعة؟",
                                textAlign: TextAlign.center,
                              ),
                              Gap(10),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.red,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                      surfaceTintColor: Colors.red,
                                    ),
                                    onPressed: () {
                                      context
                                          .read<UniversitiesCubit>()
                                          .deleteUniversity(university.id);
                                      Navigator.pop(dialogContext);
                                    },
                                    child: Text(
                                      "حذف",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(dialogContext);
                                    },
                                    child: Text("إلغاء"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
