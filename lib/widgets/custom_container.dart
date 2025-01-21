import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../theme/custom_color.dart';
import '../theme/custom_fonts.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Decoration? decoration;
  final Widget? childWidget;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final BorderRadiusGeometry? borderRadiusGeometry;
   const CustomContainer({super.key, this.width , this.decoration, this.height, this.childWidget, this.borderRadiusGeometry, this.boxShadow , this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100.h,
      width:width ??  00.w,
      decoration:decoration ??  BoxDecoration(
          color: color ?? CustomColor().cmnWhitenColor,
        boxShadow: boxShadow ?? [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
        borderRadius:  borderRadiusGeometry ??
            BorderRadius.only(bottomLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
        )
      ),
      child: childWidget!,
      // Text("AllProducts", style: CustomFonts.email,),
    );
  }
}