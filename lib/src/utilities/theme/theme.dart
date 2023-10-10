import 'package:doorhub/src/utilities/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DoorHubTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: "Urbanist",
      scaffoldBackgroundColor: DoorHubColors.scafoldColorLight,
      colorScheme:
          ColorScheme.fromSeed(seedColor: DoorHubColors.secondaryColor),
      useMaterial3: true,
      iconTheme: IconThemeData(color: DoorHubColors.darkColor, size: 25.h),
      appBarTheme:
          const AppBarTheme(backgroundColor: DoorHubColors.primaryColor),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.urbanist(
              color: DoorHubColors.darkTextColor,
              fontSize: 43.sp,
              fontWeight: FontWeight.w400),
          titleMedium: GoogleFonts.urbanist(
              color: DoorHubColors.darkTextColor,
              fontSize: 27.sp,
              fontWeight: FontWeight.w600),
          titleSmall: GoogleFonts.urbanist(
              color: DoorHubColors.darkTextColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
          //
          //
          bodyLarge: GoogleFonts.urbanist(
            color: DoorHubColors.darkTextColor.withOpacity(0.5),
            fontSize: 18.sp,
            fontWeight: FontWeight.w100,
          ),
          bodyMedium: GoogleFonts.urbanist(
            color: DoorHubColors.darkTextColor,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: GoogleFonts.urbanist(
              color: DoorHubColors.darkTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500)),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      fontFamily: 
      "Urbanist",
      scaffoldBackgroundColor: DoorHubColors.scafoldColorDark,
      colorScheme:
          ColorScheme.fromSeed(seedColor: DoorHubColors.secondaryColor),
      useMaterial3: true,
      iconTheme: IconThemeData(color: DoorHubColors.primaryColor, size: 25.h),
      appBarTheme: const AppBarTheme(backgroundColor: DoorHubColors.darkColor),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.urbanist(
              color: DoorHubColors.fadedTextColor,
              fontSize: 43.sp,
              fontWeight: FontWeight.w600),
          titleMedium: GoogleFonts.urbanist(
              color: DoorHubColors.fadedTextColor,
              fontSize: 27.sp,
              fontWeight: FontWeight.w600),
          titleSmall: GoogleFonts.urbanist(
              color: DoorHubColors.fadedTextColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w400),
          //
          //
          bodyLarge: GoogleFonts.urbanist(
            color: DoorHubColors.fadedTextColor.withOpacity(0.5),
            fontSize: 18.sp,
            fontWeight: FontWeight.w100,
          ),
          bodyMedium: GoogleFonts.urbanist(
            color: DoorHubColors.fadedTextColor,
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: GoogleFonts.urbanist(
              color: DoorHubColors.fadedTextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500)),
    );
  }
}
