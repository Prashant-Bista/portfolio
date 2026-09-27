import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/components/custom_button.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';


class ContactCtaSection extends StatelessWidget {
  const ContactCtaSection({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(decoration:  BoxDecoration(
        color: colors.surfaceContainer,
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: colors.outline,
          width: 1.w,
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
              children: [
                _CtaTitle(),
        
                SizedBox(height: 15.h),
        
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 650.w,
                  ),
                  child: Text(
                    AppStrings.ctaDescription,
                    textAlign: TextAlign.center,
                    style: textTheme.bodyMedium?.copyWith(
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ),
        
                SizedBox(height: 28.h),
        
                CustomButton(
                  label: AppStrings.startConversation,
                  icon: Icons.arrow_outward_rounded,
                  onPressed: onPressed,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.w,
                    vertical: 15.h,
                  ),
                ),
              ],
            ),
      ),
    );
  }

  Widget _CtaTitle() {
    return Builder(
      builder: (context) {
        final colors =
            Theme.of(context).colorScheme;
        final textTheme =
            Theme.of(context).textTheme;

        return RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: textTheme.displaySmall?.copyWith(
              fontSize: 43,
              height: 1.1,
              fontWeight: FontWeight.w300,
              letterSpacing: -1.5,
            ),
            children: [
              const TextSpan(
                text: "LET'S BUILD SOMETHING ",
              ),
              TextSpan(
                text: 'REMARKABLE',
                style: TextStyle(
                  color: colors.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}