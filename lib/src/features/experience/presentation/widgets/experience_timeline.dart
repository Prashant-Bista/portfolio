import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/custom_text.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:portfolio/src/features/experience/data/model/experience_model.dart';

class ExperienceTimeline extends StatelessWidget {
  final List<ExperienceModel> experiences;

  const ExperienceTimeline({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(experiences.length, (index) {
        final experience = experiences[index];

        return ExperienceTimelineItem(
          experience: experience,
          isLast: index == experiences.length - 1,
        );
      }),
    );
  }
}

class ExperienceTimelineItem extends StatelessWidget {
  final ExperienceModel experience;
  final bool isLast;

  const ExperienceTimelineItem({
    super.key,
    required this.experience,
    required this.isLast,
  });

  bool get isCurrent => experience.end == null;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(width: 10.w),

          _TimelineIndicator(isCurrent: isCurrent, isLast: isLast),

          SizedBox(width: 48.w),

          SizedBox(
            width: 200,
            child: CustomText(
              text: _formatPeriod(
                experience.start ?? DateTime(1999),
                experience.end,
              ),
              textColor: isCurrent
                  ? AppColors.primary
                  : AppColors.secondaryText,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),

          SizedBox(width: 20.w),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 70.h),
              child: _ExperienceContent(experience: experience),
            ),
          ),
        ],
      ),
    );
  }

  String _formatPeriod(DateTime start, DateTime? end) {
    final startText = start.year.toString();

    final endText = end == null ? 'Present' : end.year.toString();

    return '$startText — $endText';
  }
}

class _ExperienceContent extends StatelessWidget {
  final ExperienceModel experience;

  const _ExperienceContent({required this.experience});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: experience.role,
          textColor: AppColors.primaryText,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.5,
        ),

        SizedBox(height: 16.h),

        CustomText(
          text: experience.company,
          textColor: AppColors.secondaryText,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.2,
          maxLines: null,
          lineHeight: null,
        ),

        if (experience.tags.isNotEmpty) ...[
          SizedBox(height: 24.h),

          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: experience.tags
                .map((tag) => _ExperienceTag(text: tag))
                .toList(),
          ),
        ],
      ],
    );
  }
}

class _ExperienceTag extends StatelessWidget {
  final String text;

  const _ExperienceTag({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: AppColors.timelineBorder),
      ),
      child: CustomText(
        text: text,
        textColor: AppColors.secondaryText,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _TimelineIndicator extends StatelessWidget {
  final bool isCurrent;
  final bool isLast;

  const _TimelineIndicator({required this.isCurrent, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28.w,
      child: Column(
        children: [
          Container(
            width: isCurrent ? 28.r : 18.r,
            height: isCurrent ? 28.r : 18.r,
            decoration: BoxDecoration(
              color: isCurrent ? AppColors.primary : Colors.transparent,
              shape: BoxShape.circle,
              border: isCurrent
                  ? null
                  : Border.all(color: AppColors.timelineBorder, width: 3.r),
            ),
          ),

          if (!isLast)
            Expanded(
              child: Container(width: 2.r, color: AppColors.timelineBorder),
            ),
        ],
      ),
    );
  }
}
