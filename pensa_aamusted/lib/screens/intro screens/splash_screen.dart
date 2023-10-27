import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pensa_aamusted/authentication/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final _splController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    _splController.splashState();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 1, 67),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/logo3.png"),
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                "PENSA AAMUSTED",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
