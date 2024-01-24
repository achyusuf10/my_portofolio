import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_fonts.dart';

class AppTextStyles {
  AppTextStyles();

  static TextStyle get body2NormalAll => TextStyle(
        fontSize: 16.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      );

  static TextStyle get body2SemiBoldAll => TextStyle(
        fontSize: 16.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
      );

  static TextStyle get body2MediumAll => TextStyle(
        fontSize: 16.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
      );

  static TextStyle get body2NormalAllUnderline => TextStyle(
        fontSize: 16.sp,
        decoration: TextDecoration.underline,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      );

  static TextStyle get body3NormalAll => TextStyle(
        fontSize: 14.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
      );

  static TextStyle get body3MediumAll => TextStyle(
        fontSize: 14.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
      );
}

class AppTextStyleTablet {
  static TextStyle get headingH1BoldTablet => TextStyle(
        fontSize: 48.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 48 / 48,
      );
}

class AppTextStyleMobile {
  static TextStyle get headingH1SemiBold => TextStyle(
        fontSize: 36.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 40 / 36,
      );
}

class AppTextStyleTabletMobile {
  static TextStyle get headingH2SemiBold => TextStyle(
        fontSize: 18.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 28 / 18,
      );
  static TextStyle get headingH3SemiBold => TextStyle(
        fontSize: 24.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
      );
  static TextStyle get headingH3Bold => TextStyle(
        fontSize: 24.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
      );
  static TextStyle get subtitleNormal => TextStyle(
        fontSize: 18.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 28 / 18,
      );
  static TextStyle get subtitleSemiBold => TextStyle(
        fontSize: 18.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 28 / 18,
      );
  static TextStyle get body1Normal => TextStyle(
        fontSize: 16.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      );
}

class AppTextStyleDesktop {
  static TextStyle get headingH1Bold => TextStyle(
        fontSize: 60.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 72 / 60,
      );
  static TextStyle get headingH2SemiBold => TextStyle(
        fontSize: 36.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 40 / 36,
      );
  static TextStyle get headingH3SemiBold => TextStyle(
        fontSize: 30.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 36 / 30,
      );
  static TextStyle get headingH3Bold => TextStyle(
        fontSize: 30.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 36 / 30,
      );
  static TextStyle get subtitleNormal => TextStyle(
        fontSize: 20.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 28 / 20,
      );
  static TextStyle get subtitleSemiBold => TextStyle(
        fontSize: 20.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 28 / 20,
      );
  static TextStyle get body1Normal => TextStyle(
        fontSize: 18.sp,
        decoration: TextDecoration.none,
        fontFamily: AppFonts.inter,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 28 / 18,
      );
}
