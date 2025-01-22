import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slc_health/theme/custom_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final VoidCallback? onTap;

  const CustomElevatedButton({super.key, this.onTap, this.text, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 9.h,
      width: width ?? 80.w,
      // height: 9.h,
      // width: 80.w,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: CustomColor.btnColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(62))),
          child: Text(text!)),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:slc_health/theme/custom_color.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
//
// class CustomElevatedButton extends StatelessWidget {
//   final double? height; // Corrected to double
//   final double? width;  // Corrected to double
//   final String? text;
//   final VoidCallback? onTap;
//
//   const CustomElevatedButton({
//     super.key,
//     this.onTap,
//     this.text,
//     this.height,
//     this.width,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height ?? 9.h, // Use 9.h if height is not passed
//       width: width ?? 80.w,  // Use 80.w if width is not passed
//       child: ElevatedButton(
//         onPressed: onTap,
//         style: ElevatedButton.styleFrom(
//           foregroundColor: Colors.white,
//           backgroundColor: CustomColor().btnColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(62),
//           ),
//         ),
//         child: Text(text!),
//       ),
//     );
//   }
// }
