import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontSize;
  final double? letterSpacing;
  final TextAlign? textAlign;
  final bool isSelectable;
  final FontWeight? fontWeight;
  final double? lineHeight; 
  final Color? textColor;
  const CustomText({super.key, required this.text,this.isSelectable=true,  this.maxLines, this.fontSize,  this.lineHeight, this.letterSpacing, this.fontWeight, this.textAlign, this.textColor, this.overflow});

  @override
  Widget build(BuildContext context) {

    final textStyle  =TextStyle(
      letterSpacing: letterSpacing,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: lineHeight,
      color: textColor
    );
    if(isSelectable){
      return SelectableText(text,style: 
    
    
    textStyle,
    maxLines: maxLines,
    textAlign: textAlign);
    }
    else{
      return Text(text,style: 
    
    
    textStyle,
    maxLines: maxLines,
    textAlign: textAlign);
    }
  }
}

