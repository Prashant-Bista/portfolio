import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/core/components/custom_appbar.dart';
import 'package:portfolio/src/core/components/error_widget.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/features/projects/presentation/provider/project_provider.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/core/components/common_grey_card.dart';
import 'package:portfolio/src/core/components/custom_button.dart';
import 'package:portfolio/src/core/components/custom_text.dart';
import 'package:portfolio/src/core/config/router/routes.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:portfolio/src/core/constants/app_images.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/features/projects/data/project_model.dart';
import 'package:url_launcher/url_launcher.dart';
class ProjectScreen extends ConsumerWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(getProjectProvider);
    return CustomScaffold(
      body: projects.when(
        data: (data) => ListView.separated(
          padding: EdgeInsets.all(15),
          
          itemCount: data.length,
          itemBuilder: (context, index) => ProjectShowcase(project: data[index]), separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 16,),
        ),
        error: (error, st) => AppErrorWidget(message: error.toString()),
        loading: () => ShimmerList(height: 400.h, ),
      ),
    );
  }
}


class ProjectShowcase extends StatelessWidget {
  final ProjectModel project;

  const ProjectShowcase({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return CommonGreyCard(
      padding: EdgeInsets.all(48.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: _ProjectImage(image: project.image)),

          SizedBox(width: 70.w),

          Expanded(flex: 6, child: _ProjectDetails(project: project)),
        ],
      ),
    );
  }
}

class _ProjectDetails extends StatelessWidget {
  final ProjectModel project;

  const _ProjectDetails({required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: project.name,
          textColor: AppColors.lightText,
          fontSize: 42,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.8,
        ),

        SizedBox(height: 24.h),

        CustomText(
          text: project.description,
          textColor: AppColors.secondaryText,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          lineHeight: 1.6,
        ),

        SizedBox(height: 32.h),

        Container(height: 1.h, color: AppColors.projectBorder),

        SizedBox(height: 28.h),

        _ProjectTags(tags: project.tags),

        SizedBox(height: 34.h),

        _ProjectLinks(
          google: project.google,
          apple: project.apple,
          github: project.github,
        ),
        if (project.caseStudy != null) ...[
          SizedBox(height: 12.h),
          CustomButton(
            label: AppStrings.caseStudy,
            icon: Icons.arrow_right,
            iconSize: 24,
            iconAtEnd: true,
            onPressed: () {
              context.goNamed(
                Routes.caseStudy.name,
                extra: {"name": project.name, "case_study": project.caseStudy},
              );
            },
            backgroundColor: AppColors.primaryBg,

            foregroundColor: AppColors.primary,
          ),
        ],
      ],
    );
  }
}

class _ProjectImage extends StatelessWidget {
  final String image;

  const _ProjectImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.r),
        child: Image.network(
          image,
          fit: BoxFit.cover,

          errorBuilder: (context, error, stackTrace) {
            return Image.asset(AppImages.projectPlaceholder, fit: BoxFit.cover);
          },

          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }

            return const _ProjectImageLoader();
          },
        ),
      ),
    );
  }
}

class _ProjectImageLoader extends StatelessWidget {
  const _ProjectImageLoader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgColor,
      alignment: Alignment.center,
      child: SizedBox(
        width: 28.r,
        height: 28.r,
        child: CircularProgressIndicator(
          strokeWidth: 2.r,
          color: AppColors.primary,
        ),
      ),
    );
  }
}

class _ProjectTags extends StatelessWidget {
  final List<String> tags;

  const _ProjectTags({required this.tags});

  @override
  Widget build(BuildContext context) {
    if (tags.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      spacing: 10.w,
      runSpacing: 10.h,
      children: tags.map((tag) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
          decoration: BoxDecoration(
            color: AppColors.projectTagBackground,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.projectTagBorder),
          ),
          child: CustomText(
            text: tag,
            textColor: AppColors.projectTagText,
            fontSize: 14,
            isSelectable: false,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w500,
          ),
        );
      }).toList(),
    );
  }
}

class _ProjectLinks extends StatelessWidget {
  final String? google;
  final String? apple;
  final String? github;

  const _ProjectLinks({
    required this.google,
    required this.apple,
    required this.github,
  });

  @override
  Widget build(BuildContext context) {
    final links = <Widget>[];

    if (google?.isNotEmpty == true) {
      links.add(
        _ProjectLinkButton(
          label: AppStrings.googlePlay,
          icon: Icons.shop,
          url: google!,
        ),
      );
    }

    if (apple?.isNotEmpty == true) {
      links.add(
        _ProjectLinkButton(
          label: AppStrings.appStore,
          icon: Icons.apple,
          url: apple!,
        ),
      );
    }

    if (github?.isNotEmpty == true) {
      links.add(
        _ProjectLinkButton(
          label: AppStrings.github,
          icon: Icons.code,
          url: github!,
        ),
      );
    }

    
    if (links.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(spacing: 12.w, runSpacing: 12.h, children: links);
  }
}

class _ProjectLinkButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String url;

  const _ProjectLinkButton({
    required this.label,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: label,
      onPressed: () {
        launchUrl(Uri.parse(url));
      },
      icon: icon,
      iconAtEnd: false,
    );
  }
}
