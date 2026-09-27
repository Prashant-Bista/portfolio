import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontSize;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? lineHeight; 
  final Color? textColor;
  const CustomText({super.key, required this.text, required this.maxLines, this.fontSize, required this.lineHeight, this.letterSpacing, this.fontWeight, this.textAlign, this.textColor, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: 
    
    TextStyle(
      letterSpacing: letterSpacing,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: lineHeight,
      color: textColor
    ),
    maxLines: maxLines,
    overflow: overflow,
    textAlign: textAlign,
    );
  }
}

