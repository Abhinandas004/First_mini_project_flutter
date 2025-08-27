import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/Admin/Admin_home_user1.dart';
import 'package:mini_project/Admin/Admin_mechanic.dart';

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
        appBar: AppBar(backgroundColor: Color(0xFFEAF2FF),
          leading: Padding(
            padding: const EdgeInsets.only(left: 08),
            child: CircleAvatar(
              backgroundImage: AssetImage("Assets/Ellipse 1.png"),
            ),
          ),

          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.indigoAccent,
            ),
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
        body: TabBarView(children: [AdminHomeUser1(), AdminMechanic()]),
      ),
    );
  }
}
