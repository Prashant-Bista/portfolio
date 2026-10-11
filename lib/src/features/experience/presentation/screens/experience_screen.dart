import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/custom_appbar.dart';
import 'package:portfolio/src/core/components/error_widget.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/features/experience/data/model/education_model.dart';
import 'package:portfolio/src/features/experience/data/model/experience_model.dart';
import 'package:portfolio/src/features/experience/presentation/provider/get_education_provider.dart';
import 'package:portfolio/src/features/experience/presentation/provider/get_experience_provider.dart';
import 'package:portfolio/src/features/experience/presentation/widgets/education_section.dart';
import 'package:portfolio/src/features/experience/presentation/widgets/experience_timeline.dart';

class ExperienceScreen extends ConsumerWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext contex, WidgetRef ref) {
    final experience = ref.watch(getExperienceProvider);
    final education = ref.watch(getEducationProvider);
    return CustomScaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  children: [
                    experience.when(
                      data: (List<ExperienceModel> data) =>
                          ExperienceTimeline(experiences: data),
                      error: (Object error, StackTrace stackTrace) =>
                          AppErrorWidget(message: error.toString()),
                      loading: () => ResponsiveShimmer(height: 600.h,),
                    ),
                    SizedBox(height: 20.w,),
                    education.when(
                      data: (List<EducationModel> data) =>
                          EducationSection(education: data),
                      error: (Object error, StackTrace stackTrace) =>
                          AppErrorWidget(message: error.toString()),
                      loading: () => ResponsiveShimmer(height: 500.h,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
