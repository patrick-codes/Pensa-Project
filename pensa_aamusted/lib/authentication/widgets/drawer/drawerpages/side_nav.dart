import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../auth_repo.dart';
import 'drawer_item.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 235,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // headerWidget(),
                DrawerItem(
                  name: 'Profile',
                  //icon: Icons.people,
                  onPressed: () => onItemPressed(context, index: 0),
                ),
                DrawerItem(
                  name: 'Report missing item',
                  //icon: Icons.people,
                  onPressed: () => onItemPressed(context, index: 1),
                ),
                DrawerItem(
                  name: 'Survey',
                  //icon: Icons.book,
                  onPressed: () => onItemPressed(context, index: 2),
                ),
                const SizedBox(height: 90),
                const Divider(
                  indent: 1,
                  thickness: 1,
                  endIndent: 1,
                ),
                DrawerItem(
                  name: 'Settings',
                  //icon: Icons.settings,
                  onPressed: () => onItemPressed(context, index: 3),
                ),
                DrawerItem(
                  name: 'About',
                  //icon: Icons.people,
                  onPressed: () => onItemPressed(context, index: 4),
                ),
                DrawerItem(
                  name: 'Logout',
                  //icon: Icons.people,
                  onPressed: () => {
                    Get.defaultDialog(
                        title: "Are you sure you want to logout?",
                        content: Container(),
                        textConfirm: "Confirm",
                        textCancel: "Cancel",
                        confirmTextColor: Colors.white,
                        onConfirm: () {
                          AuthenticationRepository.instance.logout();
                        },
                        onCancel: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Cancelled Logout!"),
                            ),
                          );
                        }),
                  },
                ),
              ],
            ),
          ),
        ));
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        /*Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()));
        */
        break;
      case 1:
        /*Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()));
        */
        break;
      case 2:
        /*Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()));
        */
        break;
      case 3:
        /*Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()));
        */
        break;
      case 4:
        /*Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()));
        */
        break;
    }
  }
}
