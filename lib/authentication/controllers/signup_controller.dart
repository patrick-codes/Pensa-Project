import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/user_model.dart';
import '../auth_repo.dart';
import '../repository/userRepo/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

//TextEditingControllers to get data from TextFields
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  final userRepo = Get.put(UserRepository());

//Register Function
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

//Get user details from user
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }
}
