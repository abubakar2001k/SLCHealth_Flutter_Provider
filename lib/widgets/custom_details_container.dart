
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slc_health/presentation/details_screen/details_screen_vm.dart';

import 'custom_icon_box.dart';

class CustomDetailsContainer extends StatelessWidget {
  final  Widget? price;
  final Widget? imgUrl;


  const CustomDetailsContainer({super.key, this.imgUrl,  this.price});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Consumer<DetailsScreenVm>(
          builder: (context, provider, child) {
            return SizedBox(
              height: provider.isExpended ? 70.h : 55.h,
              width: 100.w,
              child: imgUrl ?? Image(
                image: AssetImage("assets/images/unsplash_dwKiHoqqxk8@2x.png"),
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        Positioned(
          top: 10,
          left: 8,
          child:
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CustomIconBox(
              imageUrl: 'assets/images/Icon.png',
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 8,
          child: CustomIconBox(imageUrl: 'assets/images/menu.png'),
        ),
        Positioned(
          top: 70,
          bottom: 8,
          left: 8,
          child: Text(
            "Details",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              // backgroundColor: Colors.black45,
            ),
          ),
        ),
        Consumer<DetailsScreenVm>(
          builder: (context, provider, child) {
            return Positioned(
              top: provider.isExpended ? 55.h : 40.h,
              bottom: 8,
              left: 8,
              child: price ?? Text(
                "0000 AED",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.px,
                  // backgroundColor: Colors.black45,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
