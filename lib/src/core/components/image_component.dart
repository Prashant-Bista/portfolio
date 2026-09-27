import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageComponent extends StatelessWidget {
  final String pngPath;
  final double? height;
  final double? width;
  
  const ImageComponent({super.key,required this.pngPath, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    

    return  ClipRRect(
                  borderRadius:
                      BorderRadius.circular(22.r),
                  child: Image.asset(
                  
                    height: height??350,
                    width: width?? 350,
                   pngPath,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                );
      
  }
}