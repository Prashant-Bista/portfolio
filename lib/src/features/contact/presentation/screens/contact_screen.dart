import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/src/core/components/common_grey_card.dart';
import 'package:portfolio/src/core/components/custom_appbar.dart';
import 'package:portfolio/src/core/components/custom_button.dart';
import 'package:portfolio/src/core/components/custom_text.dart';
import 'package:portfolio/src/core/components/loading_widget.dart';
import 'package:portfolio/src/core/constants/app_colors.dart';
import 'package:portfolio/src/core/constants/app_images.dart';
import 'package:portfolio/src/core/constants/app_strings.dart';
import 'package:portfolio/src/core/constants/static_data.dart';
import 'package:portfolio/src/features/contact/data/contact_model.dart';
import 'package:portfolio/src/features/contact/presentation/provider/set_contact_provider.dart';
import 'package:portfolio/src/features/home/presentation/provider/get_personal_details_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends ConsumerWidget {

  const ContactScreen({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presonalDetail = ref.watch(getPersonalDetailsProvider);
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ContactHeader(),

              SizedBox(height: 60.h),
              presonalDetail.when(
                data: (data) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 900.w) {
                      return Column(
                        children: [
                          _ContactForm(),

                          SizedBox(height: 24.h),
                          _ContactInfo(
                            email: data.email,
                            phone: data.phone,
                            linkedin: data.linkedin,
                            facebook: data.facebook,
                            instagram: data.instagram,
                          ),
                        ],
                      );
                    }

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 7,
                          child: _ContactForm(),
                        ),

                        SizedBox(width: 24.w),

                        Expanded(
                          flex: 4,
                          child: _ContactInfo(
                            email: data.email,
                            phone: data.phone,
                            linkedin: data.linkedin,
                            facebook: data.facebook,
                            instagram: data.instagram,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                error: (e, st) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 900.w) {
                      return Column(
                        children: [
                          _ContactForm(),

                          SizedBox(height: 24.h),
                          _ContactInfo(
                            email: staticPersonalInfo.email,
                            phone: staticPersonalInfo.phone,
                            linkedin: staticPersonalInfo.linkedin,
                            facebook: staticPersonalInfo.facebook,
                            instagram: staticPersonalInfo.instagram,
                          ),
                        ],
                      );
                    }

                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 7,
                          child: _ContactForm(),
                        ),

                        SizedBox(width: 24.w),

                        Expanded(
                          flex: 4,
                          child: _ContactInfo(
                            email: staticPersonalInfo.email,
                            phone: staticPersonalInfo.phone,
                            linkedin: staticPersonalInfo.linkedin,
                            facebook: staticPersonalInfo.facebook,
                            instagram: staticPersonalInfo.instagram,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                loading: () => ShimmerCard(height: 500.h,width: 900.w,borderRadius: 28.r,length: 2,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  final ValueChanged<ContactModel>? onSubmit;

  const ContactSection({super.key, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 100.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContactHeader(),

          SizedBox(height: 60.h),

          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 900.w) {
                return Column(
                  children: [
                    _ContactForm(),

                    SizedBox(height: 24.h),

                    const _ContactInfo(),
                  ],
                );
              }

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 7, child: _ContactForm()),

                  SizedBox(width: 24.w),

                  Expanded(flex: 4, child: const _ContactInfo()),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ContactHeader extends StatelessWidget {
  const _ContactHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 20.w, height: 2.h, color: AppColors.primary),

            SizedBox(width: 10.w),

            CustomText(
              text: AppStrings.contactEyebrow,
              textColor: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ],
        ),

        SizedBox(height: 22.h),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 800.w),
          child: CustomText(
            text: AppStrings.contactTitle,
            textColor: AppColors.lightText,
            fontSize: 58,
            fontWeight: FontWeight.w400,
            lineHeight: 1.08,
          ),
        ),

        SizedBox(height: 20.h),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 720.w),
          child: CustomText(
            text: AppStrings.contactDescription,
            textColor: AppColors.secondaryText,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            lineHeight: 1.6,
          ),
        ),
      ],
    );
  }
}

class _ContactForm extends ConsumerStatefulWidget {

  const _ContactForm();

  @override
  ConsumerState<_ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends ConsumerState<_ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();
  final _contactController = TextEditingController();
  String? _requiredValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.requiredField;
    }

    return null;
  }

  String? _emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.requiredField;
    }

    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

    if (!emailRegex.hasMatch(value.trim())) {
      return AppStrings.invalidEmail;
    }

    return null;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    _contactController.dispose();

    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final model = ContactModel(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      subject: _subjectController.text.trim(),
      message: _messageController.text.trim(),
      contact: _contactController.text.trim().isEmpty
          ? null
          : _contactController.text.trim(),
    );

    ref.watch(setContactProvider.notifier).submit(model);
  }
  void clear(){
     _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();
    _contactController.clear();

  }
  @override
  Widget build(BuildContext context) {
final isLoading = ref.watch(
  setContactProvider.select((state) => state.isLoading),
);

ref.listen(setContactProvider, (previous, next) {
  next.whenOrNull(
    data: (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Message sent successfully'),
        ),
      );
    },
    error: (error, stackTrace) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.toString()),
        ),
      );
    },
  );
});
    return CommonGreyCard(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: AppStrings.contactFormTitle,
              textColor: AppColors.lightText,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),

            SizedBox(height: 8.h),

            CustomText(
              text: AppStrings.contactFormDescription,
              textColor: AppColors.secondaryText,
              fontSize: 14,
            ),

            SizedBox(height: 32.h),

            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 650.w) {
                  return Column(
                    children: [
                      _nameField(),
                      SizedBox(height: 20.h),
                      _emailField(),
                    ],
                  );
                }

                return Row(
                  children: [
                    Expanded(child: _nameField()),

                    SizedBox(width: 16.w),

                    Expanded(child: _emailField()),
                  ],
                );
              },
            ),

            SizedBox(height: 20.h),

            _subjectField(),

            SizedBox(height: 20.h),

            _contactField(),

            SizedBox(height: 20.h),

            _messageField(),

            SizedBox(height: 30.h),

            Row(
              children: [
                Expanded(
                  child: CustomText(
                    text: AppStrings.contactPrivacy,
                    textColor: AppColors.contactHint,
                    fontSize: 12,
                    lineHeight: 1.4,
                  ),
                ),

                SizedBox(width: 20.w),

                isLoading?AppLoadingWidget():CustomButton(
                  onPressed: _submit,
                  label: AppStrings.sendMessage,
                  icon: Icons.north_east,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _nameField() {
    return _ContactTextField(
      controller: _nameController,
      label: AppStrings.name,
      hint: AppStrings.nameHint,
      validator: _requiredValidator,
    );
  }

  Widget _emailField() {
    return _ContactTextField(
      controller: _emailController,
      label: AppStrings.emailLabel,
      hint: AppStrings.emailHint,
      keyboardType: TextInputType.emailAddress,
      validator: _emailValidator,
    );
  }

  Widget _subjectField() {
    return _ContactTextField(
      controller: _subjectController,
      label: AppStrings.subject,
      hint: AppStrings.subjectHint,
      validator: _requiredValidator,
    );
  }

  Widget _contactField() {
    return _ContactTextField(
      controller: _contactController,
      label: AppStrings.contact,
      hint: AppStrings.contactHint,
      keyboardType: TextInputType.phone,
    );
  }

  Widget _messageField() {
    return _ContactTextField(
      controller: _messageController,
      label: AppStrings.message,
      hint: AppStrings.messageHint,
      maxLines: 6,
      validator: _requiredValidator,
    );
  }
}

class _ContactTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final TextInputType? keyboardType;
  final int maxLines;
  final String? Function(String?)? validator;

  const _ContactTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.keyboardType,
    this.maxLines = 1,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          textColor: AppColors.contactLabel,
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),

        SizedBox(height: 8.h),

        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          validator: validator,
          style: TextStyle(color: AppColors.lightText, fontSize: 15),
          cursorColor: AppColors.primary,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.contactHint, fontSize: 14),
            filled: true,
            fillColor: AppColors.contactInput,

            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 15.h,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.contactBorder),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.contactBorder),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.primary, width: 1.2),
            ),

            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.error),
            ),

            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.error, width: 1.2),
            ),
          ),
        ),
      ],
    );
  }
}

class _ContactInfo extends StatelessWidget {
  final String? email;
  final String? linkedin;
  final String? facebook;
  final String? github;
  final String? phone;
  final String? instagram;
  const _ContactInfo({
    this.email,
    this.linkedin,
    this.facebook,
    this.github,
    this.instagram,
    this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonGreyCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: AppStrings.preferDirectContact,
                textColor: AppColors.lightText,
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),

              SizedBox(height: 10.h),

              CustomText(
                text: AppStrings.directContactDescription,
                textColor: AppColors.secondaryText,
                fontSize: 14,
                lineHeight: 1.5,
              ),

              if (email != null) ...[
                SizedBox(height: 28.h),

                _ContactInfoItem(
                  icon: Icons.email_outlined,
                  label: AppStrings.emailLabel,
                  urlScheme: 'mailto',
                  value: email!,
                ),
              ],

              if (phone != null) ...[
                SizedBox(height: 18.h),
                _ContactInfoItem(
                  icon: Icons.phone_outlined,
                  label: AppStrings.contact,
                  urlScheme: 'tel',
                  value: phone!,
                ),
              ],
              if (linkedin != null) ...[
                SizedBox(height: 18.h),
                _ContactInfoItem(
                  svgPath: AppImages.linkedin,
                  label: AppStrings.linkedin,                                
                  value: linkedin!,
                ),
              ],
              if (facebook != null) ...[
                SizedBox(height: 18.h),
                _ContactInfoItem(
                  icon: Icons.facebook,
                  label: AppStrings.contact,
                  value: facebook!,
                ),
              ],
              if (instagram != null) ...[
                SizedBox(height: 18.h),
                _ContactInfoItem(
                  svgPath: AppImages.instagram,
                  label: AppStrings.instagram,
                  value: instagram!,
                  icon: null,
                ),
              ],
              if (github != null) ...[
                SizedBox(height: 18.h),
                _ContactInfoItem(
                  svgPath: AppImages.github,
                  label: AppStrings.github,
                  value: github!,
                ),
              ],
            ],
          ),
        ),

        SizedBox(height: 20.h),

        _ContactBottomCard(),
      ],
    );
  }
}

class _ContactInfoItem extends StatelessWidget {
  final IconData? icon;
  final String? urlScheme;
  final String? svgPath;
  final String label;
  final String value;

  const _ContactInfoItem({
    this.icon,
    required this.label,
    required this.value,
    this.svgPath,
    this.urlScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 18.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.contactBorder)),
      ),
      child: Row(
        children: [
          Container(
            width: 42.r,
            height: 42.r,
            decoration: BoxDecoration(
              color: AppColors.contactIconBackground,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: (icon != null)
                ? Icon(icon, color: AppColors.primary, size: 19.r)
                : ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      AppColors.primary,
                      BlendMode.srcIn,
                    ),
                    child: SvgPicture.asset(svgPath!),
                  ),
          ),

          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: label.toUpperCase(),
                  textColor: AppColors.contactLabel,
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),

                SizedBox(height: 4.h),

                SelectableText(
                  value,
                  style: TextStyle(color: AppColors.lightText, fontSize: 14),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.north_east_outlined,
              color: AppColors.educationAddress,
            ),
            onPressed: () async {
              await launchUrl(urlScheme!=null?Uri(scheme: urlScheme, path: value):Uri.parse(value));
            },
          ),
        ],
      ),
    );
  }
}

class _ContactBottomCard extends StatelessWidget {
  const _ContactBottomCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(28.w),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42.r,
            height: 42.r,
            decoration: BoxDecoration(
              color: AppColors.contactButtonText,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              Icons.chat_bubble_outline_rounded,
              color: AppColors.primary,
              size: 19.r,
            ),
          ),

          SizedBox(width: 16.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppStrings.letsTalk,
                  textColor: AppColors.contactButtonText,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),

                SizedBox(height: 8.h),

                CustomText(
                  text: AppStrings.letsTalkDescription,
                  textColor: AppColors.contactButtonText,
                  fontSize: 13,
                  lineHeight: 1.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
