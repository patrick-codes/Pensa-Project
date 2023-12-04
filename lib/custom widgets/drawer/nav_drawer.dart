import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pensa_aamusted/constants/color_constants.dart';
import 'package:pensa_aamusted/screens/developer/developer.dart';

import '../../screens/donation page/donation_page.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              "",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            accountEmail: Text(
              "",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            currentAccountPictureSize: Size.square(60),
            decoration: BoxDecoration(
              color: kPrimaryC,
              image: DecorationImage(
                image: AssetImage("assets/images/img11.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(LineIcons.phone),
            title: const Text("Contact & Enquiries"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(LineIcons.folder),
            title: const Text("Upcoming Programs"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(LineIcons.peopleCarry),
            title: const Text("Donate Offering"),
            onTap: () {
              Get.to(() => const DonationPage());
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.anchor),
            title: const Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(LineIcons.user),
            title: const Text("Developer"),
            onTap: () {
              Get.to(() => const DeveloperPage());
            },
          ),
          ListTile(
            leading: const Icon(LineIcons.addressBook),
            title: const Text("About Us"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(LineIcons.alternateSignOut),
            title: const Text("Logout"),
            onTap: () {},
          ),
          const SizedBox(height: 80),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Copyright",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Icon(
                    LineIcons.copyright,
                    size: 13,
                  ),
                  Text(
                    "pensa aamusted",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                "Developed by Kofik Technology Ghana Accra",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text(
                "www.kofiktechgh.com",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          /*Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                Get.to(() => DonationPage());
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Donate Offering",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      LineIcon(
                        LineIcons.donate,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        */
        ],
      ),
    );
  }
}
