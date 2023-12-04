import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.name,
      //required this.icon,
      required this.onPressed});

  final String name;
  // final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            // Icon(icon),
            //const SizedBox(width: 40),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
