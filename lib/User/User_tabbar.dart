import 'package:flutter/material.dart';

class UserTabbar extends StatefulWidget {
  const UserTabbar({super.key});

  @override
  State<UserTabbar> createState() => _UserTabbarState();
}

class _UserTabbarState extends State<UserTabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffCFE2FF),
        elevation: 0,
        toolbarHeight: 80,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("Assets/Ellipse 1.png"),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search..",
                    prefixIcon: Icon(Icons.search, size: 20),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 8),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "Assets/74a46d1fafed0d2e3e2916663c83d0b663e0b05c.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
