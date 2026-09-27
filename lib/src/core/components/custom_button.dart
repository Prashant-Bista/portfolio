import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.icon,
    this.iconAtEnd = true,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
    this.fontSize,
    this.iconSize,
  });

  final String label;
  final VoidCallback? onPressed;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;

  final IconData? icon;
  final bool iconAtEnd;

  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;

  final double? width;
  final double? height;

  final double? fontSize;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: width?.w,
      height: height?.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backgroundColor ?? colors.primary,
          foregroundColor:
              foregroundColor ?? colors.onPrimary,
          elevation: 0,

          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 14.h,
              ),

          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(30.r),

            side: borderColor != null
                ? BorderSide(
                    color: borderColor!,
                    width: 1.w,
                  )
                : BorderSide.none,
          ),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null && !iconAtEnd) ...[
              Icon(
                icon,
                size: (iconSize ?? 16).sp,
              ),
              SizedBox(width: 8.w),
            ],

            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.labelLarge?.copyWith(
                fontSize: (fontSize ?? 14),
                color: foregroundColor ??
                    colors.onPrimary,
              ),
            ),

            if (icon != null && iconAtEnd) ...[
              SizedBox(width: 10.w),
              Icon(
                icon,
                size: (iconSize ?? 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}