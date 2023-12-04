import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

import '../../constants/color_constants.dart';
import '../../constants/loading_indicator.dart';
import '../auth_repo.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

//TextEditingControllers to get data from TextFields
  final username = TextEditingController();
  final number = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  bool isGoogleLoading = false;

  //GoogleSignIn
  Future<void> googleSignIn() async {
    try {
      //  isGoogleLoading = true;
      Indicator.showLoading();
      final auth = AuthenticationRepository.instance;
      await auth.signInWithGoogle();
      auth.setInitialScreen(auth.firebaseUser as User?);
      // isGoogleLoading.value = false;
      Indicator.showLoading();
    } catch (e) {}
  }

//Register Function
  void loginUser(String email, String password) {
    AuthenticationRepository.instance
        .loginUserWithEmailAndPassword(email, password);
  }
}
