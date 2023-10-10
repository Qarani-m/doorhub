import 'package:doorhub/src/features/auth/service/onboardin_controller.dart';
import 'package:get/instance_manager.dart';

class DoorHubBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(() => OnBoardingController());
  }


}