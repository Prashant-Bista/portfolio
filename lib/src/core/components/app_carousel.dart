import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> imageUrls;
  final double? height;
  final double? borderRadius;
  final BoxFit fit;
  final bool showIndicators;
  final bool showControls;
  final bool expandToWidth;

  const ImageCarousel({
    super.key,
    required this.imageUrls,
    this.height,
    this.borderRadius,
    this.fit = BoxFit.fitHeight,
    this.showIndicators = true,
    this.showControls = true,
    this.expandToWidth = true,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int index) {
    if (index < 0 || index >= widget.imageUrls.length) return;

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final radius = widget.borderRadius ?? 20.r;
    final urls = widget.imageUrls;

    if (urls.isEmpty) {
      return _buildEmptyState(colors, radius);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
   

        return SizedBox(
          width: 800.w,
          height: 800.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Stack(
              fit: StackFit.expand,
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: urls.length,
                  onPageChanged: (index) {
                    setState(() => _currentIndex = index);
                  },
                  itemBuilder: (context, index) {
                    return Image.network(
                      urls[index],
                      fit: widget.fit,
                      width: double.infinity,
                      errorBuilder: (_, _, _) {
                        return _buildImageError(colors);
                      },
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;

                        return Container(
                          color: colors.surfaceContainerHighest,
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 28.r,
                            height: 28.r,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: colors.primary,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),

                if (widget.showControls && urls.length > 1 && _currentIndex!=0) 
                  Positioned(
                    left: 12.w,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: _controlButton(
                        context,
                        icon: Icons.chevron_left_rounded,
                        onTap: () => _goToPage(_currentIndex - 1),
                      ),
                    ),
                  ),
                  if (widget.showControls && urls.length > 1 && _currentIndex!=urls.length-1) 
                  Positioned(
                    right: 12.w,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: _controlButton(
                        context,
                        icon: Icons.chevron_right_rounded,
                        onTap: () => _goToPage(_currentIndex + 1),
                      ),
                    ),
                  ),
                ],

                // if (widget.showIndicators && urls.length > 1)
                //   Positioned(
                //     bottom: 16.h,
                //     left: 0,
                //     right: 0,
                //     child: Center(
                //       child: Container(
                //         padding: EdgeInsets.symmetric(
                //           horizontal: 12.w,
                //           vertical: 8.h,
                //         ),
                //         decoration: BoxDecoration(
                //           color: colors.surface.withValues(alpha: 0.8),
                //           borderRadius: BorderRadius.circular(100.r),
                //         ),
                //         child: SmoothPageIndicator(
                //           controller: _pageController,
                //           count: urls.length,
                //           effect: WormEffect(
                //             dotHeight: 7.r,
                //             dotWidth: 7.r,
                //             spacing: 6.w,
                //             dotColor: colors.onSurfaceVariant
                //                 .withValues(alpha: 0.4),
                //             activeDotColor: colors.primary,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
              
            ),
          ),
        );
      },
    );
  }

  Widget _controlButton(
    BuildContext context, {
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.primaryFixed.withValues(alpha: 0.85),
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Padding(
          padding: EdgeInsets.all(6.r),
          child: Icon(
            icon,
            size: 24.r,
            color: colors.onError,
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(ColorScheme colors, double radius) {
    return Container(
      width: double.infinity,
      height: widget.height ?? 320.h,
      decoration: BoxDecoration(
        color: colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: colors.outlineVariant),
      ),
      alignment: Alignment.center,
      child: Icon(
        Icons.image_outlined,
        size: 40.r,
        color: colors.onSurfaceVariant,
      ),
    );
  }

  Widget _buildImageError(ColorScheme colors) {
    return Container(
      color: colors.surfaceContainerHighest,
      alignment: Alignment.center,
      child: Icon(
        Icons.broken_image_outlined,
        size: 40.r,
        color: colors.onSurfaceVariant,
      ),
    );
  }
}