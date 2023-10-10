import 'package:doorhub/src/features/auth/views/login.dart';
import 'package:doorhub/src/features/auth/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  void goToLogin(){
    Get.to(Login());
  }
  void goToSignUp(){
    Get.to( SignUp());
  }
  Future<void> sigInwithGoogle()async{}
}

class SignUpController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  @override
  void onInit(){
    super.onInit();
  emailController.text = "";

  }



  RxBool fillTexField = false.obs;

}