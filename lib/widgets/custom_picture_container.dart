import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../theme/custom_color.dart';

class CustomPictureContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final String? imgUrl;
  const CustomPictureContainer({super.key, this.width , this.height, this.child, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 27.4.h,
      width: width ?? 89.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          // Network Image for url and only assets image for assets imaeg ok
          //   image: NetworkImage(imgUrl!)
          image: AssetImage('assets/images/unsplash_4qSb_FWhHKs.png'),
          fit:BoxFit.cover,
        ),
          color: CustomColor.cmnWhitenColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),
          //   bottomRight: Radius.circular(35),

      ),
      child: Center(child: child ??
          Text("AllProducts")),

    );
  }
}