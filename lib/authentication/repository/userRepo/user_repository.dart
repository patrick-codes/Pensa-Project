import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/color_constants.dart';
import '../../../model/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(
          () => Get.snackbar(
            "SUCCESS",
            "Your Account Has Being Created!",
            //snackPosition: SnackPosition.BOTTOM,
            backgroundColor: kPrimaryC,
            colorText: Colors.white,
          ),
        )
        .catchError((error, StackTrace) {
      Get.snackbar(
        "ERROR",
        "Something Went Wrong!!. Try Again",
        backgroundColor: kPrimaryC,
        colorText: Colors.white,
      );
    });
  }

//Fetch User details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("users").where("email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;

    return userData;
  }

  //Fetch all users
  Future<List<UserModel>> getAllDetails() async {
    final snapshot = await _db.collection("users").get();
    final userData =
        snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();

    return userData;
  }
}
