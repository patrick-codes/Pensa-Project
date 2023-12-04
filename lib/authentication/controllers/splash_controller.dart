import 'package:get/get.dart';
import 'package:pensa_aamusted/screens/intro%20screens/welcome_screen.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();

  Future<void> splashState() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.to(
      () => WelcomeScreen(),
      transition: Transition.rightToLeft,
    );
  }
}
