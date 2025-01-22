import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slc_health/presentation/details_screen/details_screen_vm.dart';
import 'package:slc_health/presentation/details_screen/provider/details_provider.dart';

import '../../../theme/custom_color.dart';
import '../../../theme/custom_fonts.dart';

class CustomContinerBottomBox extends StatelessWidget {
  final Widget? widget;

  const CustomContinerBottomBox({super.key, this.widget  });
  @override
  Widget build(BuildContext context) {
    return Consumer<DetailsScreenVm>(
      builder: (context , vm , child ) {
        return Container(
          height: vm.isExpended ?  35.h : 50.h,
          width:  100.w,
          decoration: BoxDecoration(
              color: CustomColor.cmnWhitenColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius:
              BorderRadius.only(topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
          ),
          child: widget ??
              Text("AllProducts", style: CustomFonts.email,),

        );
      },
    );
  }
}