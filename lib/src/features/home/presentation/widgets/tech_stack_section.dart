import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/error_widget.dart';
import 'package:portfolio/src/core/components/highlighted_label.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/features/home/data/model/personal_info_model.dart';
import 'package:portfolio/src/features/home/presentation/provider/get_personal_details_provider.dart';
import 'package:portfolio/src/features/home/presentation/widgets/tech_stack_card.dart';

class TechStackSection extends ConsumerWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personalInfo = ref.watch(getPersonalDetailsProvider);
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;

        return Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SectionHeader(),

              SizedBox(height: 35.h),
              personalInfo.when(
                data: (PersonalInfoModel data) =>
                    _TechGrid(isMobile: isMobile, stack: data.techStack),
                error: (Object error, StackTrace stackTrace) =>
                    AppErrorWidget(message: error.toString()),
                loading: () => AppLoadingWidget(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelChip(
          label: AppStrings.techStack.toUpperCase(),
          backgroundColor: colors.primary.withValues(alpha: 0.10),
          textColor: colors.primary,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
          borderRadius: BorderRadius.circular(20.r),
          icon: Container(
            width: 6.w,
            height: 6.w,
            decoration: BoxDecoration(
              color: colors.primary,
              shape: BoxShape.circle,
            ),
          ),
        ),

        SizedBox(height: 18.h),

        Text(
          AppStrings.technologiesIWorkWith.toUpperCase(),
          style: textTheme.displaySmall?.copyWith(
            fontSize: 44.sp,
            height: 1.05,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
          ),
        ),
      ],
    );
  }
}

class _TechGrid extends StatelessWidget {
  const _TechGrid({required this.isMobile, required this.stack});

  final bool isMobile;
  final Map<String, dynamic> stack;

  @override
  Widget build(BuildContext context) {
    final cards = stack.entries
        .map(
          (entry) => TechStackCard(
            title: entry.key,
            technologies: List<String>.from(entry.value as List),
          ),
        )
        .toList();

    [
      const TechStackCard(
        title: AppStrings.mobileDevelopment,
        technologies: [AppStrings.flutter],
      ),

      const TechStackCard(
        title: AppStrings.backendAndApis,
        technologies: [
          AppStrings.firebase,
          AppStrings.supabase,
          AppStrings.restApi,
        ],
      ),

      const TechStackCard(
        title: AppStrings.databaseAndStorage,
        technologies: [
          AppStrings.sqlite,
          AppStrings.drift,
          AppStrings.hive,
          AppStrings.firestore,
          AppStrings.noSql,
        ],
      ),

      const TechStackCard(
        title: AppStrings.devOpsAndCiCd,
        technologies: [AppStrings.githubActions],
      ),

      const TechStackCard(
        title: AppStrings.developmentTools,
        technologies: [
          AppStrings.xcode,
          AppStrings.androidStudio,
          AppStrings.figma,
          AppStrings.postman,
          AppStrings.bruno,
        ],
      ),
    ];

    if (isMobile) {
      return Column(
        children: cards
            .map(
              (card) => Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: card,
              ),
            )
            .toList(),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final cardWidth = (width - 24.w) / 3;

        return Wrap(
          spacing: 12.w,
          runSpacing: 12.h,
          children: cards
              .map((card) => SizedBox(width: cardWidth, child: card))
              .toList(),
        );
      },
    );
  }
}
