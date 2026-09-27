import 'package:flutter/material.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';


class LabelChip extends StatelessWidget {
  const LabelChip({
    super.key,
    this.label,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.margin,
    this.border,
    this.borderRadius,
    this.onTap,
    this.icon,
    this.width,
  });

  final String? label;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Border? border;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final Widget? icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: width,
      margin: margin,
      child: Material(
        color: backgroundColor ??
            colors.primary.withValues(alpha: 0.12),
        borderRadius: borderRadius ??
            BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius ??
              BorderRadius.circular(20),
          child: Container(
            padding: padding ??
                const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
            decoration: BoxDecoration(
              border: border,
              borderRadius: borderRadius ??
                  BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 7),
                ],
                Expanded(
                  child: Text(
                    label ?? '',
                    style: textTheme.labelSmall?.copyWith(
                      color:
                          textColor ?? colors.primary,
                      fontSize: fontSize,
                      fontWeight:
                          fontWeight ?? FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HighlightedIcon extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final Color? bgColor;
  final double? iconSize;
  final double? height;
  final double? width;
  const HighlightedIcon({
    super.key,
    this.icon,
    this.iconColor,
    this.bgColor,
    this.iconSize,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 42,
      height: height ?? 42,
      decoration: BoxDecoration(
        color: bgColor ?? AppColors.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon ?? Icons.info_outline_rounded,
        color: iconColor ?? AppColors.primary,
        size: iconSize ?? 24,
      ),
    );
  }
}
