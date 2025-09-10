import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_accepted.dart';
import 'package:mini_project/Mech/Mech_edit_profile.dart';
import 'package:mini_project/Mech/Mech_notification.dart';
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
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MechNotification()),
                  );
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
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
          backgroundColor: Colors.white,
          elevation: 0,

          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MechEditProfile(),));
            },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("Assets/Ellipse 9.png"),
              ),
            ),
          ),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              decoration: BoxDecoration(
                color: Color(0xffE9F1FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
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
        body: TabBarView(children: [MechRequestsPage(), MechAccepted()]),
      ),
    );
  }
}
