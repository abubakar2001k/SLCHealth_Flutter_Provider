import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slc_health/theme/custom_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFonts {
  // Ensure CustomColor is properly initialized

  // Correct definition of title
  static TextStyle title = GoogleFonts.inder(
    fontWeight: FontWeight.w400,
    height: 43.57 / 36.0,
    fontSize: 20.px,
    color: CustomColor.cmnWhitenColor,
    letterSpacing: -0.3,
    // Ensure this is a valid Color
  );
  static TextStyle email = TextStyle(
    fontFamily: 'SFProDisplay',
    // height: 43.57 / 36.0,
    fontSize:13,
    color: CustomColor.dtxtolor,
    letterSpacing: -0.41,
    // Ensure this is a valid Color
  );

  static TextStyle appTittle = TextStyle(
        fontSize:36.px ,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color:Colors.white,
    // Ensure this is a valid Color
  );
  static TextStyle needHelp = TextStyle(
    fontSize:36.px ,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    color:Colors.grey.shade600,
    // Ensure this is a valid Color
  );

  static TextStyle login = TextStyle(
    fontFamily: 'SFProDisplay',
    fontWeight: FontWeight.w700,
    height: 43.57 / 36.0,
    fontSize: 30,
    color: CustomColor.cmnWhitenColor,
    letterSpacing: -0.3,
    decoration: TextDecoration.none,
// Adjusted to match static reference
  );

  static TextStyle product = TextStyle(
    fontFamily: 'SFProDisplay',
    fontWeight: FontWeight.w700,
    height: 43.57 / 36.0,
    fontSize: 50,
    color: CustomColor.btnColor,
    letterSpacing: -0.3,
    decoration: TextDecoration.none,
  );
  static TextStyle allproductTitte = TextStyle(
    fontSize:30,
    // fontFamily: 'SFProDisplay',
    fontFamily: 'Open Sans',
    fontWeight: FontWeight.w600,
  );
  static TextStyle productDetailsTittile  = TextStyle(
  color: CustomColor.dtxtolor,
  fontSize:14.px,

  fontStyle: FontStyle.italic,
  fontFamily: 'Open Sans'
  );
  static TextStyle price  = TextStyle(
      // color: CustomColor().productColor,
      color: Colors.white,
      fontSize:22.px,
fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      fontFamily: 'Open Sans'
  );

  static TextStyle detailsTextStyle  = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 10.px,
    color: CustomColor.dtxtolor,

  );
  static TextStyle reviews  = TextStyle(
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.w600,
      fontSize: 13.px,
    color: CustomColor.reviewCorlor,
  ) ;

  static TextStyle rattingFonts  = TextStyle(
  fontFamily: 'Open Sans',
  fontWeight: FontWeight.w600,
  fontSize: 25.px,
    color: Colors.black,
  );
}
