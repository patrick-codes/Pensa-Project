import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../constants/color_constants.dart';

//import 'package:flutter_paystack/flutter_paystack.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPage();
}

class _DeveloperPage extends State<DeveloperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Developer",
          style: TextStyle(
            color: kPrimaryC,
          ),
        ),
        //backgroundColor: kPrimaryC,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            LineIcons.arrowLeft,
            color: kPrimaryC,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
