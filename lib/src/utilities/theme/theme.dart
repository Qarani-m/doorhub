import 'package:doorhub/src/utilities/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoorHubTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: "Roboto",
      scaffoldBackgroundColor: DoorHubColors.scafoldColorLight,
      colorScheme:
          ColorScheme.fromSeed(seedColor: DoorHubColors.secondaryColor),
      useMaterial3: true,
      iconTheme: IconThemeData(color: DoorHubColors.darkColor, size: 25.h),
      appBarTheme:
          const AppBarTheme(backgroundColor: DoorHubColors.primaryColor),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              color: DoorHubColors.darkTextColor,
              fontSize: 43.sp,
              fontWeight: FontWeight.w400),
          titleMedium: TextStyle(
              color: DoorHubColors.darkTextColor,
              fontSize: 27.sp,
              fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
              color: DoorHubColors.darkTextColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
          //
          //
          bodyLarge: TextStyle(
            color: DoorHubColors.darkTextColor.withOpacity(0.5),
            fontSize: 18.sp,
            fontWeight: FontWeight.w100,
          ),
          bodyMedium: TextStyle(
            color: DoorHubColors.darkTextColor,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
              color: DoorHubColors.darkTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500)),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      fontFamily: 
      "Roboto",
      scaffoldBackgroundColor: DoorHubColors.scafoldColorDark,
      colorScheme:
          ColorScheme.fromSeed(seedColor: DoorHubColors.secondaryColor),
      useMaterial3: true,
      iconTheme: IconThemeData(color: DoorHubColors.primaryColor, size: 25.h),
      appBarTheme: const AppBarTheme(backgroundColor: DoorHubColors.darkColor),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              color: DoorHubColors.fadedTextColor,
              fontSize: 43.sp,
              fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              color: DoorHubColors.fadedTextColor,
              fontSize: 27.sp,
              fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
              color: DoorHubColors.fadedTextColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w400),
          //
          //
          bodyLarge: TextStyle(
            color: DoorHubColors.fadedTextColor.withOpacity(0.5),
            fontSize: 18.sp,
            fontWeight: FontWeight.w100,
          ),
          bodyMedium: TextStyle(
            color: DoorHubColors.fadedTextColor,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
              color: DoorHubColors.fadedTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500)),
    );
  }
}
