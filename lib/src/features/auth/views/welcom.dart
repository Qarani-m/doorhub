import 'package:doorhub/src/features/auth/service/login_controller.dart';
import 'package:doorhub/src/utilities/constants/colors.dart';
import 'package:doorhub/src/utilities/constants/images.dart';
import 'package:doorhub/src/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});
  LoginController loginController = Get.put(LoginController());

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              SizedBox(height: 30.h),
              SizedBox(
                height: 150.h,
                child: SvgPicture.asset(DoorHubImages.loginImage),
              ),
              SizedBox(height: 30.h),
              Text(
                "Let's you in",
                style: textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30.h,
              ),

              GestureDetector(
                onTap: ()=>loginController.sigInwithGoogle(),
                child: Container(
                  height: 70.h,
                  width: 390.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: DoorHubColors.fadedTextColor
                          .withOpacity(isDarkMode ? 0.1 : 0.5),
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SvgPicture.asset(
                      DoorHubImages.google,
                      height: 25.h,
                      width: 25.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Continue with Google",
                      style: textTheme.bodySmall,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1.h,
                    width: 150.w,
                    color: DoorHubColors.fadedTextColor
                        .withOpacity(isDarkMode ? 0.1 : 0.5),
                  ),
                  Text(
                    "or",
                    style: textTheme.bodySmall,
                  ),
                  Container(
                    height: 1.h,
                    width: 150.w,
                    color: DoorHubColors.fadedTextColor
                        .withOpacity(isDarkMode ? 0.1 : 0.5),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: ()=>loginController.goToLogin(),
                child: SizedBox(
                  height: 50.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: DoorHubColors.secondaryColor),
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "Sign in with password ",
                          style: textTheme.bodySmall
                              ?.copyWith(color: DoorHubColors.primaryColor),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap:()=>loginController.goToSignUp(),
                child: SizedBox(
                  width: 200.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account? ",
                        style: textTheme.bodySmall?.copyWith(fontSize: 12.sp),
                      ),
                      Text(
                        "Sign up",
                        style: textTheme.bodySmall?.copyWith(
                            fontSize: 12.sp, color: DoorHubColors.secondaryColor),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
