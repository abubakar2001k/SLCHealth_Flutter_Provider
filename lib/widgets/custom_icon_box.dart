import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slc_health/theme/custom_color.dart';

class CustomIconBox extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;

  const CustomIconBox({super.key, this.imageUrl, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 6.h,
      width: height ?? 6.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],

      ),
      child:Image.asset(imageUrl ?? 'assets/images/Icon.png'),

    );
        
  }
}
