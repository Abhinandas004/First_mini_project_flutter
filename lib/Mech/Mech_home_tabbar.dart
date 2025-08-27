import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_accepted.dart';
import 'package:mini_project/Mech/Mech_requests_page.dart';

class MechHomeTabbar extends StatefulWidget {
  const MechHomeTabbar({super.key});

  @override
  State<MechHomeTabbar> createState() => _MechHomeTabbarState();
}

class _MechHomeTabbarState extends State<MechHomeTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(actions: [IconButton(onPressed: () {
          
        }, icon: Icon(Icons.notifications_sharp,color: Colors.yellow,))],
          backgroundColor: Colors.white,
          elevation: 0,

          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("Assets/Ellipse 9.png"),
            ),
          ),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xffE9F1FF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Color(0xffCFE2FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      'Requests',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Accepted',
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
        ),
        body: TabBarView(
          children: [
            MechRequestsPage(),
            MechAccepted(),
          ],
        ),
      ),
    );
  }
}
