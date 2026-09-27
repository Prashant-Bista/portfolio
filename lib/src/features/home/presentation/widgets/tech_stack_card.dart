import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/highlighted_label.dart';


class TechStackCard extends StatelessWidget {
  const TechStackCard({
    super.key,
    required this.title,
    required this.technologies,
  });

  final String title;
  final List<String> technologies;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        color: colors.surfaceContainer,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: colors.outlineVariant,
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.labelSmall?.copyWith(
              fontSize: 9,
              letterSpacing: 1.0,
              fontWeight: FontWeight.w600,
              color: colors.onSurfaceVariant,
            ),
          ),

          SizedBox(height: 18.h),

          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: technologies.map(
              (technology) {
                return LabelChip(
                  label: technology,
                  backgroundColor:
                      colors.primary.withValues(
                    alpha: 0.06,
                  ),
                  textColor: colors.primary,
                  border: Border.all(
                    color: colors.primary.withValues(
                      alpha: 0.20,
                    ),
                    width: 1.w,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.w,
                    vertical: 7.h,
                  ),
                  borderRadius:
                      BorderRadius.circular(20.r),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}