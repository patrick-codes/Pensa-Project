import 'package:flutter/material.dart';

class ProfilePg extends StatefulWidget {
  const ProfilePg({super.key});

  @override
  State<ProfilePg> createState() => _ProfilePgState();
}

class _ProfilePgState extends State<ProfilePg> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
