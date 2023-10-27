import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pensa_aamusted/authentication/controllers/signup_controller.dart';
import 'package:pensa_aamusted/screens/intro%20screens/login_screen.dart';
import 'package:text_divider/text_divider.dart';
import '../../constants/color_constants.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _signupController = Get.put(SignUpScreenController());

  @override
  Widget build(BuildContext context) {
    // _splController.splashState();
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
                        image: AssetImage("assets/images/logo3.png"),
                        height: 80,
                        width: 80,
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
                        "Register to continue using PENSA AAMUSTED app",
                        style: TextStyle(
                          color: kPrimaryC,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(fontSize: 10, color: kPrimaryC),
                          suffixIcon: Icon(Icons.person, color: kPrimaryC),
                          labelText: "Username",
                          labelStyle: TextStyle(fontSize: 15, color: kPrimaryC),
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 10, color: kPrimaryC),
                          suffixIcon: Icon(Icons.mail, color: kPrimaryC),
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 15, color: kPrimaryC),
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 10, color: kPrimaryC),
                          suffixIcon: Icon(Icons.visibility, color: kPrimaryC),
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 15, color: kPrimaryC),
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {},
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
                                "Signup",
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
                          Get.to(() => LoginScreen());
                        },
                        child: Center(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(fontSize: 15),
                              children: [
                                TextSpan(
                                  text: "Already registered? ",
                                  style: TextStyle(
                                    color: kPrimaryC,
                                  ),
                                ),
                                TextSpan(
                                  text: " Login",
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
