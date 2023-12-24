import 'package:flutter/material.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_fonts.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme().copyWith(
      bodyMedium: const TextStyle(color: AppColorsLight.gray600),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColorsLight.gray900,
      splashColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsLight.gray900,
        foregroundColor: Colors.white,
      ),
    ),
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primaryContainer: AppColorsLight.grayDefault,
      onPrimaryContainer: AppColorsLight.gray50,
      secondaryContainer: AppColorsLight.gray200,
    ),
    primaryColor: AppColorsLight.gray900,
    focusColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppFonts.inter,
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme().copyWith(
      bodyMedium: const TextStyle(color: AppColorsDark.gray600),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColorsDark.gray900,
      splashColor: AppColorsDark.grayDefault,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsDark.gray900,
        foregroundColor: AppColorsDark.grayDefault,
      ),
    ),
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
        primaryContainer: AppColorsDark.grayDefault,
        onPrimaryContainer: AppColorsDark.gray50,
        secondaryContainer: AppColorsDark.gray200),
    primaryColor: AppColorsDark.gray900,
    focusColor: Colors.transparent,
    scaffoldBackgroundColor: AppColorsDark.grayDefault,
    fontFamily: AppFonts.inter,
    useMaterial3: true,
  );
}
