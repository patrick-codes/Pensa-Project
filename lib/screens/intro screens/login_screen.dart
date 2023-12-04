import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pensa_aamusted/constants/color_constants.dart';
import 'package:pensa_aamusted/screens/home/home.dart';
import 'package:text_divider/text_divider.dart';

import '../../authentication/controllers/login_controller.dart';
import '../../constants/loading_indicator.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _loginController = Get.put(LoginController());
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final formKey2 = GlobalKey<FormState>();
    return Scaffold(
      //backgroundColor:  Color.fromARGB(255, 2, 1, 67),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/pensa_logo.jpg"),
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 10),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: kPrimaryC,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        textAlign: TextAlign.center,
                        "Login to continue using PENSA AAMUSTED app",
                        style: TextStyle(
                          color: kPrimaryC,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          Form(
                            key: formKey2,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: controller.email,
                                  decoration: const InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                        fontSize: 10, color: kPrimaryC),
                                    suffixIcon:
                                        Icon(Icons.mail, color: kPrimaryC),
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                        fontSize: 15, color: kPrimaryC),
                                    enabledBorder: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  controller: controller.password,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        fontSize: 10, color: kPrimaryC),
                                    suffixIcon: Icon(Icons.visibility,
                                        color: kPrimaryC),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                        fontSize: 15, color: kPrimaryC),
                                    enabledBorder: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          if (formKey2.currentState!.validate()) {
                            //Indicator.showLoading();
                            LoginController.instance.loginUser(
                              controller.email.text.trim(),
                              controller.password.text.trim(),
                            );
                            //Indicator.closeLoading();
                          }
                        },
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kPrimaryC,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Continue",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignUpScreen());
                        },
                        child: Center(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(fontSize: 15),
                              children: [
                                TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                    color: kPrimaryC,
                                  ),
                                ),
                                TextSpan(
                                  text: " Sign Up",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextDivider.horizontal(
                        text: const Text(
                          "OR",
                          style: TextStyle(
                            color: kPrimaryC,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            strokeAlign: BorderSide.strokeAlignInside,
                            style: BorderStyle.solid,
                            width: 1,
                            color: kPrimaryC,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.google,
                              color: kPrimaryC,
                            ),
                            SizedBox(width: 7),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontSize: 13,
                                color: kPrimaryC,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            strokeAlign: BorderSide.strokeAlignInside,
                            style: BorderStyle.solid,
                            width: 1,
                            color: kPrimaryC,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.facebook,
                              color: kPrimaryC,
                            ),
                            SizedBox(width: 7),
                            Text(
                              "Continue with Facebook",
                              style: TextStyle(
                                fontSize: 13,
                                color: kPrimaryC,
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
          ),
        ),
      ),
    );
  }
}
