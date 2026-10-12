import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/src/core/components/custom_button.dart';
import 'package:portfolio/src/core/config/router/routes.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/core/providers/current_page_provider.dart';


class ContactCtaSection extends ConsumerWidget {
  const ContactCtaSection({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  Widget _ctaTitle() {
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
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final currentpageNotifier = ref.read(currentPageProvider(context).notifier);
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
                _ctaTitle(),
        
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
                  onPressed: (){
                    currentpageNotifier.changeCurrentPage(Routes.contact.name);
                    context.goNamed(Routes.contact.name);
                  },
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


}