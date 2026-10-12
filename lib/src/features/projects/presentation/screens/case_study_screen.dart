import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/app_carousel.dart';
import 'package:portfolio/src/core/components/common_grey_card.dart';
import 'package:portfolio/src/core/components/custom_text.dart';
import 'package:portfolio/src/core/components/highlighted_label.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';

class CaseStudyScreen extends StatelessWidget {
  final String projectName;
  final Map<String, dynamic> caseStudy;

  const CaseStudyScreen({
    super.key,
    required this.projectName,
    required this.caseStudy,
  });

  String? _content(String key) {
    final value = caseStudy[key]?.trim();

    if (value == null || value.isEmpty) {
      return null;
    }

    return value;
  }

  List<String> _lines(String? value) {
    if (value == null || value.trim().isEmpty) {
      return [];
    }

    return value
        .split('\n')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
  }

  List<String> _technologies(String? value) {
    if (value == null || value.trim().isEmpty) {
      return [];
    }

    return value
        .split('.')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 60.h),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                CustomText(
                  text: projectName,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  textColor: colorScheme.onSurface,
                ),

                SizedBox(height: 12.h),

                Container(
                  width: 70.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),

                SizedBox(height: 48.h),

                /// Overview
                _TextSection(
                  title: CaseStudyTitle.overview,
                  content: _content(CaseStudyTitle.overview),
                ),

                /// My Role
                _TextSection(
                  title: CaseStudyTitle.myRole,
                  content: _content(CaseStudyTitle.myRole),
                ),

                /// What I Worked On
                _ListSection(
                  title: CaseStudyTitle.whatIWorkedOn,
                  items: _lines(_content(CaseStudyTitle.whatIWorkedOn)),
                ),

                /// Technical Focus
                _TechSection(
                  title: CaseStudyTitle.technicalFocus,
                  technologies: _technologies(
                    _content(CaseStudyTitle.technicalFocus),
                  ),
                ),

                /// Key Challenge
                _TextSection(
                  title: CaseStudyTitle.keyChallenge,
                  content: _content(CaseStudyTitle.keyChallenge),
                ),

                /// Architecture
                _TextSection(
                  title: CaseStudyTitle.architecture,
                  content: _content(CaseStudyTitle.architecture),
                ),

                /// Design Focus
                _ListSection(
                  title: CaseStudyTitle.designFocus,
                  items: _lines(_content(CaseStudyTitle.designFocus)),
                ),

                ///focus
                _TextSection(
                  title: CaseStudyTitle.focus,
                  content: _content(CaseStudyTitle.focus),
                ),
               if (caseStudy[CaseStudyTitle.images]!=null) _ImageSection(
                  title: CaseStudyTitle.images,
                  images: (caseStudy[CaseStudyTitle.images] as List<dynamic>)
                      .map((each) => each.toString())
                      .toList(),
                ),

                /// What I Learned
                _TextSection(
                  title: CaseStudyTitle.whatILearned,
                  content: _content(CaseStudyTitle.whatILearned),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TextSection extends StatelessWidget {
  final String title;
  final String? content;

  const _TextSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    if (content == null) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 28.h),
      child: CommonGreyCard(
        padding: EdgeInsets.all(32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              textColor: colorScheme.primary,
            ),

            SizedBox(height: 14.h),

            CustomText(
              text: content!,
              fontSize: 16,
              lineHeight: 1.7,
              textColor: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}

class _ListSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const _ListSection({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 28.h),
      child: CommonGreyCard(
        padding: EdgeInsets.all(32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              textColor: colorScheme.primary,
            ),

            SizedBox(height: 18.h),

            ...items.map(
              (item) => Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8.h, right: 14.w),
                      width: 6.w,
                      height: 6.w,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        text: item,
                        fontSize: 16,
                        lineHeight: 1.6,
                        textColor: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageSection extends StatelessWidget {
  final String title;
  final List<String> images;
  const _ImageSection({ required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 28.h),
      child:CommonGreyCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            textColor: colorScheme.primary,
          ),
          Center(child: ImageCarousel(imageUrls: images)),
        ],
      ),
    ));
  }
}

class _TechSection extends StatelessWidget {
  final String title;
  final List<String> technologies;

  const _TechSection({required this.title, required this.technologies});

  @override
  Widget build(BuildContext context) {
    if (technologies.isEmpty) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 28.h),
      child: CommonGreyCard(
        padding: EdgeInsets.all(32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              textColor: colorScheme.primary,
            ),

            SizedBox(height: 20.h),

            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: technologies
                  .map(
                    (technology) => LabelChip(
                      label: technology,
                      backgroundColor: colorScheme.primary.withValues(
                        alpha: 0.10,
                      ),
                      textColor: colorScheme.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 9.h,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
