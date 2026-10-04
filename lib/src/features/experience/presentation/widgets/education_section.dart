import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/common_grey_card.dart';
import 'package:portfolio/src/core/components/custom_text.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/features/experience/data/model/education_model.dart';

class EducationSection extends StatelessWidget {
  final List<EducationModel> education;

  const EducationSection({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 100.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: AppStrings.educationHeader,
            textColor: AppColors.lightText,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
          ),

          SizedBox(height: 42.h),

          EducationGrid(education: education),
        ],
      ),
    );
  }
}

class EducationGrid extends StatelessWidget {
  final List<EducationModel> education;

  const EducationGrid({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: List.generate(education.length, (index)=>EducationCard(education: education[index])),);
  }
}

class EducationCard extends StatelessWidget {
  final EducationModel education;

  const EducationCard({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return CommonGreyCard( 
      height: 300,
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Year
          CustomText(
            text: _formatYear(education.year),
            textColor: AppColors.card,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
          SizedBox(height: 6.h),

          // Institute
          CustomText(
            text: education.institute,
            textColor: AppColors.lightText,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 6.h),

          // Course
          CustomText(
            text: education.level,
            textColor: AppColors.primary,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 6.h),

          // Course
          CustomText(
            text: education.course ?? "--",
            textColor: AppColors.educationCourse,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 6.h),

          // Address
          CustomText(
            text: education.address,
            textColor: AppColors.educationAddress,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 6.h),

          // Percentage
          if (education.gpa != null)
            CustomText(
              text: "GPA: ${education.gpa!}",
              textColor: AppColors.primary,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),

          if (education.percentage != null)
            CustomText(
              text: "${education.percentage} %",
              textColor: AppColors.primary,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
        ],
      ),
    );
  }

  String _formatYear(DateTime? year) {
    if (year == null) {
      return '—';
    }

    return year.year.toString();
  }
}
