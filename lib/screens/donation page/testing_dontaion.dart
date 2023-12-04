import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../constants/color_constants.dart';
import 'controllers/donation_controller.dart';
import 'donation repository/donation_repo.dart';
//import 'package:flutter_paystack/flutter_paystack.dart';

class TestingPage extends StatelessWidget {
  TestingPage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    //controller.donate();
    final donateFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: Text(message),
    );
  }
}
