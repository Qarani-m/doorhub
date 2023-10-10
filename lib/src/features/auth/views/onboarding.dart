import 'package:doorhub/src/features/auth/service/onboardin_controller.dart';
import 'package:doorhub/src/features/auth/views/welcom.dart';
import 'package:doorhub/src/utilities/constants/colors.dart';
import 'package:doorhub/src/utilities/constants/images.dart';
import 'package:doorhub/src/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});
  //  final onBoardingController = Get.find<OnBoardingController>();
  OnBoardingController onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: 50.h,
            left: DoorHubSizes.horizontalPadding,
            right: DoorHubSizes.horizontalPadding),
        child: PageView.builder(
            itemCount: 3,
            controller: onBoardingController.pageController,
            itemBuilder: (context, int pageIndex) {
              return Column(
                children: [
                  SizedBox(
                    height: 320.h,
                    child: SvgPicture.asset(DoorHubImages.onboarding[pageIndex],
                        semanticsLabel: 'A red up arrow'),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: Text(
                        textAlign: TextAlign.center,
                        onBoardingController.text[pageIndex],
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                            padding:EdgeInsets.all(1.w),

                            child: Container(
                              height: index==pageIndex?5.h:6.h,
                              width: index==pageIndex?16.h:6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                      color: pageIndex == index
                                          ? DoorHubColors.secondaryColor
                                          : DoorHubColors.fadedTextColor),
                                ),
                          )),
                    ),
                  ),
                 
                  SizedBox(
                    height: 60.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: DoorHubColors.secondaryColor,
                        elevation: 5,
                      ),
                      onPressed: () => onBoardingController.nextBtn(pageIndex),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            pageIndex == 2 ? "Get Started" : "Next",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: DoorHubColors.primaryColor),
                          ),
                        ),
                      ))
                ],
              );
            }),
      ),
    );
  }
}
