import 'package:get/get.dart';

import '../../screens/intro screens/welcome_screen.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();

  Future splashState() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Get.to(() => WelcomeScreen());
    /*Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ));*/
  }
}
