import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 2,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "PENSA AAMUSTED",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          // SizedBox(width: 5),
          Row(
            children: [
              const Icon(
                Icons.notifications_active_outlined,
                size: 30,
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Get.to(() => ());
                },
                child: const CircleAvatar(
                  foregroundColor: Colors.grey,
                  //backgroundColor: Colors.grey,
                  radius: 16,
                  child: Center(
                    child: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      leading: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu_rounded,
            size: 30,
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
