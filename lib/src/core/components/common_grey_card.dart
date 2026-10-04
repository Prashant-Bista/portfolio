import 'package:flutter/material.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';

class CommonGreyCard extends StatefulWidget {
  final double? borderRadius;
  final double? height;
  final double? width;
  final Color? bgColor;
  final EdgeInsets? padding;
  final Widget child;
  const CommonGreyCard({
    super.key,
    this.borderRadius,
    this.bgColor,
    this.padding,
    required this.child, this.height, this.width,
  });
  @override
  State<CommonGreyCard> createState() => _CommonGreyCardState();
}

class _CommonGreyCardState extends State<CommonGreyCard> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        height: widget.height,
        width: widget.width,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          color: widget.bgColor ?? AppColors.card,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 28.0),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.20),
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(0, 0),
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: widget.padding ?? const EdgeInsets.all(28),
          child: widget.child,
        ),
      ),
    );
  }
}
