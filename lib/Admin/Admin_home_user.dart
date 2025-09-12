import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/Admin/Admin_home_user1.dart';
import 'package:mini_project/Admin/Admin_mechanic.dart';
import 'package:mini_project/Admin/Listview_admin_home_user.dart';

class AdminHomeUser extends StatefulWidget {
  const AdminHomeUser({super.key});

  @override
  State<AdminHomeUser> createState() => _AdminHomeUserState();
}

class _AdminHomeUserState extends State<AdminHomeUser> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFEAF2FF),
        appBar: AppBar(
          backgroundColor: Color(0xFFEAF2FF),
          leading: Padding(
            padding: const EdgeInsets.only(left: 08),
            child: CircleAvatar(
              backgroundImage: AssetImage("Assets/Ellipse 1.png"),
            ),
          ),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xffE9F1FF),
                borderRadius: BorderRadius.circular(7),
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Color(0xff6EA3F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      'User',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Mechanic',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [ListviewBuilderEg(), AdminMechanic()]),
      ),
    );
  }
}
