import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/core/components/custom_button.dart';
import 'package:portfolio/src/core/components/custom_text.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/core/config/router/routes.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:portfolio/src/core/constants/static_data.dart';
import 'package:portfolio/src/features/home/presentation/provider/get_personal_details_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_strings.dart';

class PortfolioFooter extends StatelessWidget {
  const PortfolioFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isMobile = MediaQuery.sizeOf(context).width < 700;

    return Container(
      width: double.infinity,
      color: colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 24.w : 72.w,
              vertical: isMobile ? 36.h : 64.h,
            ),
            child: isMobile
                ? _buildMobileCTA(context)
                : _buildDesktopCTA(context),
          ),
          PortfolioBottom(),
        ],
      ),
    );
  }

  Widget _buildDesktopCTA(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: _buildCTAContent(context)),
        SizedBox(width: 32.w),
        CustomButton(
          label: AppStrings.contact,
          icon: Icons.contact_mail,
          onPressed: () {
            context.goNamed(Routes.contact.name);
          },
        ),
      ],
    );
  }

  Widget _buildMobileCTA(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCTAContent(context),
        SizedBox(height: 24.h),
        _buildBookingButton(context),
      ],
    );
  }

  Widget _buildCTAContent(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: AppStrings.footerTitle,

          fontSize: 24,
          fontWeight: FontWeight.w400,
          textColor: colorScheme.onSurface,
        ),

        SizedBox(height: 12.h),
        CustomText(
          text: AppStrings.footerIntro,
          fontSize: 16,
          textColor: colorScheme.onSurfaceVariant,
        ),
      ],
    );
  }

  Widget _buildBookingButton(BuildContext context) {
    return Material(
      color: AppColors.accent,
      borderRadius: BorderRadius.circular(100.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(100.r),
        onTap: () {
          // Open your booking URL using your preferred URL launcher.
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                text: AppStrings.contact,
                textColor: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(width: 12.w),
              Icon(
                Icons.calendar_month_outlined,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PortfolioBottom extends StatelessWidget {
  const PortfolioBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isMobile = MediaQuery.sizeOf(context).width < 700;
    return Column(
      children: [
        Divider(
          height: 1,
          thickness: 1,
          color: colorScheme.outlineVariant.withValues(alpha: 0.65),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 24.w : 72.w,
            vertical: 24.h,
          ),
          child: isMobile
              ? _buildMobileBottom(context)
              : _buildDesktopBottom(context),
        ),
      ],
    );
  }

  Widget _buildDesktopBottom(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _buildCopyright(context)),
        Expanded(child: Center(child: BuildSocialLinks())),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: _buildAvailability(context),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSocialLinks(),
        SizedBox(height: 24.h),
        _buildAvailability(context),
        SizedBox(height: 16.h),
        _buildCopyright(context),
      ],
    );
  }

  Widget _buildCopyright(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return CustomText(
      text: AppStrings.footerSubtitle,
      textColor: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
      fontSize: 11,
    );
  }

  Widget _buildAvailability(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8.r,
          height: 8.r,
          decoration: const BoxDecoration(
            color: AppColors.accent,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8.w),
        CustomText(
          text: AppStrings.footerNote,
          fontSize: 11,
          textColor: colorScheme.onSurfaceVariant,
        ),
      ],
    );
  }
}

class BuildSocialLinks extends ConsumerWidget {
  const BuildSocialLinks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final personalDetails = ref.watch(getPersonalDetailsProvider);
    return personalDetails.when(
      data: (details) {
        final links = [
          ('GitHub', details.github),
          ('LinkedIn', details.linkedin),
          ('Email', details.email),
        ];

        return Wrap(
          spacing: 24.w,
          runSpacing: 12.h,
          children: links.map((link) {
            return InkWell(
              onTap: () {
                if (link.$1 == 'Email') {
                  launchUrl(Uri(scheme: 'mailto', path: link.$2));
                } else {
                  launchUrl(Uri.parse(link.$2));
                }
              },
              child: CustomText(
                text: link.$1,
                isSelectable: false,
                fontSize: 13,
                textColor: colorScheme.onSurfaceVariant,
              ),
            );
          }).toList(),
        );
      },
      error: (error, st) {
        final links = [
          ('GitHub', staticPersonalInfo.github),
          ('LinkedIn', staticPersonalInfo.linkedin),
          ('Email', staticPersonalInfo.email),
        ];

        return Wrap(
          spacing: 24.w,
          runSpacing: 12.h,
          children: links.map((link) {
            return InkWell(
              onTap: () {
                if (link.$1 == 'Email') {
                  launchUrl(Uri(scheme: 'mailto', path: link.$2));
                } else {
                  launchUrl(Uri.parse(link.$2));
                }
              },
              child: CustomText(
                text: link.$1,
                isSelectable: false,
                fontSize: 13,
                textColor: colorScheme.onSurfaceVariant,
              ),
            );
          }).toList(),
        );
      },
      loading: () => AppLoadingWidget(),
    );
  }
}
