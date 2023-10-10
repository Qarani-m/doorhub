import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoorHubSizes{
  static double horizontalPadding = 20.w;
  
  static Widget smallSpacing({double heigt = 10}){
    return SizedBox(height: heigt,);
  }
   static Widget mediumSpacing({double heigt = 20}){
    return SizedBox(height: heigt,);
  }
   static Widget largeSpacing({double heigt = 30}){
    return SizedBox(height: heigt,);
  }
}