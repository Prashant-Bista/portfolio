// import 'package:flutter/material.dart';

// class HighlightedIcon extends StatelessWidget {
//   final Color iconColor;
//   final IconData iconData;
//   final Color highlightColor;
//   final double? borderRadius;
//   final double? padding;
//   final double? size;
//   final List<BoxShadow>? boxShadow;
//   final VoidCallback? onPressed;
//   const HighlightedIcon({
//     super.key,
//     required this.iconColor,
//     required this.iconData,
//     required this.highlightColor,
//     this.borderRadius,
//     this.padding,
//     this.size,
//     this.boxShadow,
//     this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: borderRadius != null
//               ? BorderRadius.circular(borderRadius!)
//               : null,
//           shape: borderRadius != null ? BoxShape.rectangle : BoxShape.circle,
//           color: highlightColor,
//           boxShadow: boxShadow,
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(padding ?? 10),
//           child: Icon(iconData, color: iconColor, size: size ?? 20),
//         ),
//       ),
//     );
//   }
// }
