import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slc_health/theme/custom_color.dart';
class LoginContiner extends StatelessWidget {
  final Widget? child;
   LoginContiner({super.key, this.child});
  final CustomColor customColor = CustomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 414,
      height: 43.h,
      width: 100.w,
decoration: BoxDecoration(
  gradient: LinearGradient(
      colors:[
        customColor.gradient1Color,
        customColor.gradient2Color,
      ] ),
),
      child: child,
    );
  }
}
