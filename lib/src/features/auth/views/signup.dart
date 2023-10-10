import 'package:doorhub/src/features/auth/service/login_controller.dart';
import 'package:doorhub/src/utilities/constants/colors.dart';
import 'package:doorhub/src/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  SignUpController signUpController = Get.put(SignUpController());

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
              top: 70.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: IconTheme(
                      data: iconTheme, child: const Icon(Icons.arrow_back))),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Create your account",
                style:
                    textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 50.h,
                width: 390.w,
                decoration: BoxDecoration(
                    color: isDarkMode
                        ? DoorHubColors.fadedTextColor.withOpacity(0.01)
                        : DoorHubColors.fadedTextColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Obx(
                  () => Focus(
                    onFocusChange: (val) =>
                        signUpController.fillTexField.value = val,
                    child: TextFormField(
                      style: textTheme.bodySmall,
                      controller: signUpController.emailController,
                      decoration: InputDecoration(
                        prefixIcon: IconTheme(
                            data: iconTheme, child: Icon(Icons.email)),
                        hintText: 'Type here',
                        filled: signUpController.fillTexField.value,
                        fillColor: isDarkMode
                            ? DoorHubColors.secondaryColor
                                .withOpacity(0.05)
                            : DoorHubColors.secondaryColor
                                .withOpacity(0.02),
                        hintStyle: textTheme.bodySmall?.copyWith(
                            fontSize: 13.sp,
                            color: isDarkMode
                                ? DoorHubColors.primaryColor
                                    .withOpacity(0.5)
                                : DoorHubColors.darkTextColor
                                    .withOpacity(0.5)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: const BorderSide(
                              color: DoorHubColors.secondaryColor,
                              width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20.r)),
                      ),
                    ),
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
