import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slc_health/theme/custom_color.dart';
import 'package:slc_health/theme/custom_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/app_routes.dart';
import '../../../widgets/custom_rating.dart';

class CusttomCard extends StatelessWidget {
  final String? imageUrl;
  final String? price;
  final double? rating;
  final String? name;
  final String? description;

  const CusttomCard({super.key, this.name, this.imageUrl, this.price, this.description, this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: SizedBox(
          height:45.h,
          width: 100.w,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                ClipRRect(
                  // borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  borderRadius: BorderRadius.circular(10),

                  child: SizedBox(
                    child: Stack(
                      children: [
                        Image.network( imageUrl ?? 'https://via.placeholder.com/150',
                          height: 30.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.4), // Shadow color
                                  Colors.transparent, // Fade to transparent
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Bottom gradient overlay (new addition)
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 8.h, // Adjust the height for better visibility
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.4), // Dark shadow
                                  Colors.transparent, // Fade to transparent
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 1,
                          left: 8,
                          child: Text(
                            price!,
                            style: CustomFonts.price,
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 8,
                          child:
                          CustomRating(
                            rating: rating,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name!,
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     style: CustomFonts.productDetailsTittile,

                      ),
                      SizedBox(height: 4),
                      Text(
                        description!,
                          maxLines: 2,
                          overflow:   TextOverflow.ellipsis,
                          style: CustomFonts.detailsTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
