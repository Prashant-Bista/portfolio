import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({
    super.key,
    this.message,
    this.size = 28,
    this.strokeWidth = 3,
  });

  final String? message;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size,
            height: size,
            child: CircularProgressIndicator(
              strokeWidth: strokeWidth,
              color: colorScheme.primary,
            ),
          ),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}


class ResponsiveShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? baseColor;
  final Color? highlightColor;
  final Widget? child;

  const ResponsiveShimmer({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.baseColor,
    this.highlightColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: Duration(milliseconds: 500),
      baseColor: baseColor ?? AppColors.card,
      highlightColor: highlightColor ?? AppColors.primaryBg,
      child: child ??
          Container(
            width: width ?? double.infinity,
            height: height ?? 200.h,
            decoration: BoxDecoration(
              color: baseColor ?? AppColors.primaryBg,
              borderRadius: BorderRadius.circular(
                borderRadius ?? 16.r,
              ),
            ),
          ),
    );
  }
}

class ShimmerList extends StatelessWidget {
  final double? height;
  final double? borderRadius;
  final int length;

  const ShimmerList({super.key, this.borderRadius,this.height,this.length=3});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10.h,
        children: List.generate(length, (index)=>ResponsiveShimmer(height: height,borderRadius: borderRadius,)),
      ),
    );
  }
}
class ShimmerCard extends StatelessWidget {
  final double? height;
    final double? width;

  final double? borderRadius;
  final int length;

  const ShimmerCard({super.key, this.borderRadius,this.height,this.width,this.length=3});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10.w,
        children: List.generate(length, (index)=>ResponsiveShimmer(height: height,width: width??400.w,borderRadius: borderRadius,)),
      ),
    );
  }
}