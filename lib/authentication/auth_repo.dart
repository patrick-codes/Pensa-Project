import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pensa_aamusted/constants/color_constants.dart';

import '../constants/loading_indicator.dart';
import '../screens/home/home.dart';
import '../screens/intro screens/login_screen.dart';
import '../screens/intro screens/splash_screen.dart';
import '../screens/intro screens/welcome_screen.dart';
import 'repository/authenticationRepo/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //final fireInst = Get.put(UserRepository());

  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;
  late Stream<User?> _authStateChanges;

  User? get user => firebaseUser.value;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 5));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());

    ever(firebaseUser, setInitialScreen);
    /* _authStateChanges = _auth.authStateChanges();
    _authStateChanges.listen(
      (User? user) {
        firebaseUser.value = user;
        print("...User ID ${user?.email}");
      },
    );
    */
  }

  User? getUser() {
    firebaseUser.value = _auth.currentUser;
    return firebaseUser.value;
  }

  setInitialScreen(User? user) async {
    user == null
        ? Get.offAll(() => SplashScreen())
        : Get.offAll(() => MyHomePage());

    /*user == null
        ? Get.offAll(() => SplashScreen())
        : user.emailVerified
            ? Get.offAll(() => const MyHomePage())
            : Get.offAll(
                () => WelcomeScreen(),
              );
      */
  }

//Email Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser!.sendEmailVerification();
      Get.snackbar('EMAIL SENT', 'Check your email for the verification link');
    } on FirebaseAuthException catch (e) {
      final ex = Exception(e.code);
      Get.snackbar('ERROR', e.code);
      throw ex;
    } catch (_) {
      const excep = FirebaseAuthException;
      throw excep;
    }
  }

  //GoogleAuth
  Future<UserCredential> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      //if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      /*UserCredential userCredential =
            await _auth.signInWithCredential(credential);
        if (userCredential.user != null) {
          if (userCredential.additionalUserInfo!.isNewUser) {}
        }
        */
      //}
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      final ex = Exception(e.code);
      throw ex;
    } catch (_) {
      const excep = FirebaseAuthException;
      throw excep;
    }
  }

//SignupAuth
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Indicator.showLoading();
      //Get.to(() => LoginScreen());
      firebaseUser.value != null
          ? Get.offAll(() => MyHomePage())
          //replace route with signupscreen later
          : Get.offAll(() => WelcomeScreen());
      Indicator.closeLoading();
      /*if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerification();
        Get.to(() => LoginScreen());
      }
      */
      /*else if (_auth.currentUser!.emailVerified) {
        firebaseUser.value != null
            ? Get.offAll(() => const MyHomePage())
            //replace route with signupscreen later
            : Get.offAll(() => WelcomeScreen());
      }
      */
    } on FirebaseAuthException catch (e) {
      final excep = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${excep.message}');
      Get.snackbar(
        'ERROR!!',
        excep.message,
        duration: const Duration(seconds: 4),
        backgroundColor: kPrimaryC,
        colorText: Colors.white,
        overlayBlur: 3,
      );
      Indicator.closeLoading();
    } catch (_) {
      const excep = SignUpWithEmailAndPasswordFailure();
      print('FIREBASE AUTH EXCEPTION - ${excep.message}');
      Get.snackbar(
        'ERROR!!',
        excep.message,
        duration: const Duration(seconds: 4),
        backgroundColor: kPrimaryC,
        colorText: Colors.white,
        overlayBlur: 3,
      );
      Indicator.closeLoading();

      throw excep;
    }
  }

//LoginAuth Email & Password
  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      //Get.to(() => LoginScreen());
      firebaseUser.value != null
          ? Get.offAll(() => MyHomePage())
          //replace route with signupscreen later
          : Get.offAll(() => WelcomeScreen());
      /*if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerification();
        Get.to(() => LoginScreen());
      } 
      */
      /*
      else if (_auth.currentUser!.emailVerified) {
        firebaseUser.value != null
            ? Get.offAll(() => const MyHomePage())
            //replace route with signupscreen later

            : Get.offAll(() => WelcomeScreen());
      }
      */
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        //'ERROR!!', 'Check your mail to verify your account' '${e.code}',
        'ERROR!!', 'Something went wrong. Try again' '${e.code}',

        duration: const Duration(seconds: 4),
        backgroundColor: kPrimaryC,
        colorText: Colors.white,
        overlayBlur: 3,
      );
      //Get.to(() => LoginScreen());
      /*final excep = SignUpWithEmailAndPasswordFailure.code(e.code);
      SnackBar(
        content: Text(excep.message),
      );*/
    } catch (_) {}
  }

  //LogOut
  Future<void> logout() async {
    try {
      await _auth.signOut();
      await GoogleSignIn().signOut();
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } on FormatException catch (e) {
      throw e.message;
    } catch (e) {
      throw 'Unable to Logout. Try again';
    }
  }
}
