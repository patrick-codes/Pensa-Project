import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../authentication/controllers/splash_controllers.dart';
import '../../constants/color_constants.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final _splController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    _splController.splashState();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/pensa_logo.jpg"),
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                "PENSA AAMUSTED",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryC,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
