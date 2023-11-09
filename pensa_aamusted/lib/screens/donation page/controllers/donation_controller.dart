import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../donation repository/donation_repo.dart';

class DonationController extends GetxController {
  static DonationController get instance => Get.find();

  final amount = TextEditingController();
  final ref = TextEditingController();

  void donate(String amount, String ref) {
    DonationRepository.instance.donateFunction(amount, ref);
  }
}
