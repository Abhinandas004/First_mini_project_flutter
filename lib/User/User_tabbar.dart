import 'package:flutter/material.dart';
import 'package:mini_project/User/User_mech_list.dart';
import 'package:mini_project/User/User_notification.dart';
import 'package:mini_project/User/User_profile.dart';
import 'package:mini_project/User/User_request_list.dart';

class UserTabbar extends StatefulWidget {
  const UserTabbar({super.key});

  @override
  State<UserTabbar> createState() => _UserTabbarState();
}

class _UserTabbarState extends State<UserTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:  Color(0xffCFE2FF),
          elevation: 0,
          toolbarHeight: 80,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  UserProfile()),
                  );
                },
                child:  CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("Assets/Ellipse 1.png"),
                ),
              ),
               SizedBox(width: 12),
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  TextField(
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
                padding:  EdgeInsets.all(2.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  UserNotification()),
                    );
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "Assets/74a46d1fafed0d2e3e2916663c83d0b663e0b05c.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: const TabBarView(
                children: [
                  UserMechList(),
                  UserRequestList(),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              left: 25,
              right: 25,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color:  Color(0xffE9F1FF),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color:  Color(0xff6EA3F3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs:  [
                    Tab(
                      child: Text(
                        'User',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Mechanic',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
