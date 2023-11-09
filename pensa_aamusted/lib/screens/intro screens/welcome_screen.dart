import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pensa_aamusted/constants/color_constants.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  // final _splController = Get.put(SplashController());
  // final _weController = Get.put(WelcomeScreenController());
  @override
  Widget build(BuildContext context) {
    //_splController.splashState();
    return Scaffold(
      //  backgroundColor: kPrimaryC,
      body: Stack(
        children: [
          Container(
            color: Colors.white.withOpacity(0.5),
            child: Image.asset(
              'assets/images/img11.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Column(
                  children: [
                    Text(
                      "PENSA AAMUSTED",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      textAlign: TextAlign.center,
                      "PENSA is a religious denomination comprising of Pentecost members and associates on campus",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => LoginScreen(),
                            transition: Transition.cupertino,
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              style: BorderStyle.solid,
                              width: 1.5,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(2),
                            color: kPrimaryC,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => SignUpScreen(),
                            transition: Transition.cupertino,
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              style: BorderStyle.solid,
                              width: 1.5,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.yellow,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "SIGNUP",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryC,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
