import 'package:flutter/material.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';

class CommonGreyCard extends StatelessWidget {
  final double? borderRadius;
  final Color? bgColor;
  final EdgeInsets? padding;
  final Widget child;
  const CommonGreyCard({super.key, this.borderRadius, this.bgColor, this.padding, required this.child});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(
color:bgColor?? AppColors.darkGrey,
borderRadius: BorderRadius.circular(borderRadius??28.0),

    ),child: Padding(padding:padding?? EdgeInsets.all(28),child: child,),);
  }
}