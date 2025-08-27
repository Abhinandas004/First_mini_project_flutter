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
        backgroundColor: Color(0xffE8F1FF),
        body: SafeArea(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("Assets/Ellipse 1.png"),
                    ),
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Color(0xFF6495ED),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
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


              Expanded(
                child: TabBarView(
                  children: [
                    AdminHomeUser1(),
                    AdminMechanic(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
