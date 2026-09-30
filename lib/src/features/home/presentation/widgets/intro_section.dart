import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/error_widget.dart';
import 'package:portfolio/src/core/components/highlighted_label.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/features/home/data/model/personal_info_model.dart';
import 'package:portfolio/src/features/home/presentation/provider/get_personal_details_provider.dart';



class IntroductionSection extends ConsumerWidget {
  const IntroductionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personalDetails = ref.watch(getPersonalDetailsProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 800;

        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: 80.h,
          ),
          child: personalDetails.when(
            data: (model) => isMobile
                ? _MobileIntroduction(model: model)
                : _DesktopIntroduction(model: model),
            error: (error, st) => AppErrorWidget(message: error.toString()),
            loading: () => const AppLoadingWidget(),
          ),
        );
      },
    );
  }
}
class _DesktopIntroduction extends StatelessWidget {
  const _DesktopIntroduction({required this.model});

  final PersonalInfoModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: _IntroductionContent(model: model),
        ),

const Spacer(),
        Center(child: _ProfileImage(model: model)),
      ],
    );
  }
}
class _MobileIntroduction extends StatelessWidget {
  const _MobileIntroduction({required this.model});

  final PersonalInfoModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ProfileImage(model: model),

        SizedBox(height: 45.h),

        _IntroductionContent(model: model),
      ],
    );
  }
}
class _IntroductionContent extends StatelessWidget {
  const _IntroductionContent({required this.model});

  final PersonalInfoModel model;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelChip(
          label: AppStrings.introduction,
          backgroundColor:
              colors.primary.withValues(alpha: 0.10),
          textColor: colors.primary,
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
            vertical: 8.h,
          ),
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

        SizedBox(height: 25.h),

        Text(
          AppStrings.aboutMe,
          style: textTheme.displaySmall?.copyWith(
            fontSize: 48.sp,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
          ),
        ),

        SizedBox(height: 14.h),

        Text(
          model.name,
          style: textTheme.headlineMedium?.copyWith(
            fontSize: 27.sp,
            color: colors.primary,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 20.h),

        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 760.w,
          ),
          child: Text(
            model.description,
            style: textTheme.bodyLarge?.copyWith(
              height: 1.7,
            ),
          ),
        ),

        SizedBox(height: 35.h),

        _PersonalInformation(model: model),
      ],
    );
  }
}
class _PersonalInformation extends StatelessWidget {
  const _PersonalInformation({required this.model});

  final PersonalInfoModel model;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 550;

        final items = [
          _InfoItem(
            icon: Icons.location_on_outlined,
            label: AppStrings.addressLabel,
            value: model.address,
          ),
          _InfoItem(
            icon: Icons.phone_outlined,
            label: AppStrings.phoneLabel,
            value: model.phone,
          ),
          _InfoItem(
            icon: Icons.email_outlined,
            label: AppStrings.emailLabel,
            value: model.email,
          ),

          _InfoItem(
            icon: Icons.work_outline,
            label: AppStrings.workExperienceLabel,
            value: model.workExperience,
          ),
        ];

        if (isSmall) {
          return Column(
            children: items
                .map(
                  (item) => Padding(
                    padding: EdgeInsets.only(
                      bottom: 12.h,
                    ),
                    child: item,
                  ),
                )
                .toList(),
          );
        }

        return Wrap(
          spacing: 12.w,
          runSpacing: 12.h,
          children: items
              .map(
                (item) => SizedBox(
                  width: (constraints.maxWidth - 12.w) / 2,
                  child: item,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 15.h,
      ),
      decoration: BoxDecoration(
        color: colors.surfaceContainer,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: colors.outlineVariant,
          width: 1.w,
        ),
      ),
      child: Row(
        children: [
          HighlightedIcon(
            iconColor: colors.primary,
            icon: icon,
            bgColor:
                colors.primary.withValues(alpha: 0.08),
            iconSize: 17.sp,
          ),

          SizedBox(width: 13.w),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: textTheme.labelSmall?.copyWith(
                    fontSize: 8,
                    letterSpacing: 1.0,
                    color: colors.onSurfaceVariant,
                  ),
                ),

                SizedBox(height: 5.h),

                Text(
                  value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    color: colors.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({required this.model});

  final PersonalInfoModel model;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(22.r),
      child: Image.network(
        height: 350,
        width: 350,
        "https://res.cloudinary.com/dtbcdluw/image/upload/f_auto,q_auto/profile",
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}