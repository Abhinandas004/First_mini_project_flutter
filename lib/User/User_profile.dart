import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("Assets/Ellipse 1.png"),
            ),
          ),

        ],
      ),
    );
  }
}
