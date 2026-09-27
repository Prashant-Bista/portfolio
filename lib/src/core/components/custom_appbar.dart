import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_strings.dart';
import 'custom_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onStartProject,
    this.onHome,
    this.onProjects,
    this.onBlog,
    this.onContact,
  });

  final VoidCallback? onStartProject;
  final VoidCallback? onHome;
  final VoidCallback? onProjects;
  final VoidCallback? onBlog;
  final VoidCallback? onContact;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(
          bottom: BorderSide(
            color: colors.outlineVariant,
          ),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 60.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: 1800.w,
            child: Column(
              children: [
                Row(
                  children: [
                    // Logo
                    _buildLogo(context),
                
                     SizedBox(width: 14.w),
                
                    // Name
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.fullName,
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          AppStrings.appRole,
                          style: textTheme.labelSmall
                          
                        ),
                        
                       
                      ],
                    ),
                
                const Spacer(),
                    // Navigation
                    _NavItem(
                      label: AppStrings.home,
                      isSelected: true,
                      onTap: onHome,
                    ),
                    _NavItem(
                      label: AppStrings.projects,
                      onTap: onProjects,
                    ),
                    _NavItem(
                      label: AppStrings.blog,
                      onTap: onBlog,
                    ),
                    _NavItem(
                      label: AppStrings.contact,
                      onTap: onContact,
                    ),
                
                   
                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CustomButton(
                                    
                      label: AppStrings.startAProject,
                      icon: Icons.north_east,
                      onPressed: onStartProject,
                      padding:  EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Icon(
        Icons.code,
        size: 20,
        color: colors.onPrimary,
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 27.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: textTheme.bodySmall?.copyWith(
                color: isSelected
                    ? colors.onSurface
                    : colors.onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 7),

            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isSelected ? 20 : 0,
              height: 2,
              color: colors.primary,
            ),
          ],
        ),
      ),
    );
  }
}