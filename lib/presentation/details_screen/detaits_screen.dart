import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slc_health/presentation/all_products_screen/models/data_model.dart';
import 'package:slc_health/presentation/details_screen/details_screen_vm.dart';
import 'package:slc_health/presentation/details_screen/widgets/custom_continer_bottom_box.dart';
import 'package:slc_health/theme/custom_color.dart';
import 'package:slc_health/widgets/custom_elevated_button.dart';
import 'package:slc_health/widgets/custom_icon_box.dart';
import 'package:slc_health/widgets/custom_rating.dart';
import '../../theme/custom_fonts.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/custom_details_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetaitsScreen extends StatelessWidget {
  final DataModel dataModel;

  const DetaitsScreen({super.key, required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DetailsScreenVm(),
      child: Consumer<DetailsScreenVm>(
        builder: (context, vm, child) {
          return SafeArea(
              child: Scaffold(
            body: Stack(
              children: [
                CustomDetailsContainer(
                  price: Text(
                      '${dataModel.price.toString()} AED' ??
            '0000 AED',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32.px,
                // backgroundColor: Colors.black45,
              ),
            ),
                    imgUrl: Image.network(
                  dataModel.image ?? '',
                  fit: BoxFit.cover,
                )),
                // Image(
                // image: AssetImage("assets/images/unsplash_dwKiHoqqxk8@2x.png"),
                //   fit: BoxFit.cover,,
                //     ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomContinerBottomBox(
                    widget: Column(
                      spacing: 11,
                      // mainAxisAlignment: MainAxisAlignment.s,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                              onTap: () {
                                // context.read<DetailsScreenProvider>().expendContiner();
                                vm.toggleIsExpandContainer();
                              },
                              child: Center(
                                child: Container(
                                  child: vm.isExpended
                                      ? Image.asset('assets/images/unselected.png')
                                      : Image.asset('assets/images/selected.png'),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 9.w,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconBox(
                                imageUrl: 'assets/images/downod.png',
                              ),
                              CustomElevatedButton(
                                text: 'Order Now',
                                height: 8.h,
                                width: 70.w,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(
                              'Description',
                              style: CustomFonts.detailsTextStyle,
                            ),
                            Text(
                              dataModel.description ??
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                      'sed do eiusmod tempor incididunt ut labore et dolore'
                                      'magna aliqua. Ut enim ad minim veniam, quis nostrud'
                                      'exercitation ullamco laboris nisi ut aliquip ex ea'
                                      'commodo consequat.',
                              style: CustomFonts.detailsTextStyle,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Center(
                                child: vm.isExpended
                                    ? Container()
                                    : CustomContainer(
                                        height: 15.h,
                                        width: 95.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: CustomColor.rattingContiner,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(.1),
                                              spreadRadius: 1,
                                              blurRadius: 0,
                                              offset: Offset(0, 1),
                                            )
                                          ],
                                        ),
                                        childWidget: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text(
                                                'Reviews ${dataModel.rating?.count?.toString()}' ?? 'Reviews (100)',
                                                style: CustomFonts.reviews,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                spacing: 10.px,
                                                children: [
                                                  Text(
                                                    dataModel.rating?.rate?.toString() ?? '4.33',
                                                    style: CustomFonts.rattingFonts,
                                                  ),
                                                  CustomRating(
                                                    rating: dataModel.rating?.rate?.toDouble() ?? 4.3,
                                                    size: 30.px,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
