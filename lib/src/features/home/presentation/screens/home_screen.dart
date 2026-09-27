import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/custom_appbar.dart';
import 'package:portfolio/src/core/components/custom_button.dart';
import 'package:portfolio/src/core/components/highlighted_label.dart';
import 'package:portfolio/src/core/components/image_component.dart';
import 'package:portfolio/src/core/constants/app_images.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/features/home/presentation/widgets/contact_cta_section.dart';
import 'package:portfolio/src/features/home/presentation/widgets/intro_section.dart';
import 'package:portfolio/src/features/home/presentation/widgets/tech_stack_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.surface,
      appBar: null,
      body: Column(
        children: [
          CustomAppBar(
            onStartProject: () {},
            onHome: () {},
            onProjects: () {},
            onBlog: () {},
            onContact: () {},
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 1100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 64,
                    ),
                    child:  Column(
                      children: [
                        const IntroductionSection(),

                        SizedBox(height: 80.h),
                        const _HeroSection(),

                        const TechStackSection(),

                        SizedBox(height: 40.h),

                        ContactCtaSection(
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                  ),
                ),
              ),
            ])
          );
        
  }
}
class _HeroContent extends StatelessWidget {
  const _HeroContent();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Availability chip
        LabelChip(
          width: 200,
          label: AppStrings.availability,
          backgroundColor:
              colors.primary.withValues(alpha: 0.10),
          textColor: colors.primary,
        
          borderRadius: BorderRadius.circular(20),
          
        ),

        const SizedBox(height: 28),

        // Heading
        _buildHeading(context),

        const SizedBox(height: 24),

        // Description
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 510,
          ),
          child: Text(
            AppStrings.heroDescription,
            style: textTheme.bodyLarge?.copyWith(
              height: 1.55,
            ),
          ),
        ),

        const SizedBox(height: 26),

        // Buttons
       CustomButton(
              label: AppStrings.exploreWorks,
              icon: Icons.arrow_forward,
              fontSize: 12,
              padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 8.w),
              onPressed: () {},
            ),

        const SizedBox(height: 25),

       


      ],
    );
  }

  Widget _buildHeading(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final style = textTheme.displayMedium?.copyWith(
      fontSize: 58,
      height: 1.02,
      letterSpacing: -2.5,
      fontWeight: FontWeight.w300,
    );

    return RichText(
      text: TextSpan(
        style: style,
        children: [
          const TextSpan(
            text: '${AppStrings.heroTitleLineOne}\n'
                '${AppStrings.heroTitleLineTwo}\n',
          ),

          TextSpan(
            text: AppStrings.heroTitleHighlight,
            style: style?.copyWith(
              color: colors.primary,
            ),
          ),

          TextSpan(
            text: ' ${AppStrings.heroTitleLineThree}\n',
          ),

          const TextSpan(
            text: AppStrings.heroTitleLineFour,
          ),
        ],
      ),
    );
  }
}
class _HeroSection extends StatelessWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 800;
        
        return  isMobile?Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _HeroContent(),

        const SizedBox(width: 50),

        ImageComponent(pngPath: AppImages.heroShowcase,width: constraints.maxWidth*0.85,height: 500.h,),
      ],
    ):Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: _HeroContent(),
        ),

        const SizedBox(width: 50),

        ImageComponent(pngPath: AppImages.heroShowcase,width: 600.w,height: 750.h,),
      ],
    );
      }
    );
  }
}



