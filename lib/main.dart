import 'package:doorhub/src/features/auth/views/onboarding.dart';
import 'package:doorhub/src/utilities/binding/app_binding.dart';
import 'package:doorhub/src/utilities/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  Get.put(DoorHubBinding());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (context, child)=>GetMaterialApp(
        initialBinding: DoorHubBinding(),
        title: 'door hub',
        debugShowCheckedModeBanner: false,
        theme: DoorHubTheme.lightTheme(),
        darkTheme:DoorHubTheme.darkTheme(),
        themeMode: ThemeMode.system,
        home:  Onboarding(),
      ),
    );
  }
}






