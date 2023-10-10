import 'package:doorhub/src/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
   Login({super.key});

  @override
  Widget build(BuildContext context) {
    var iconTheme = Theme.of(context).iconTheme;
    var textTheme = Theme.of(context).textTheme;
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: DoorHubSizes.horizontalPadding,
              right: DoorHubSizes.horizontalPadding,
              top: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconTheme(data: iconTheme, child: Icon(Icons.arrow_back)),
            ],
          ),
        ),
      ),
    );
  }
}
