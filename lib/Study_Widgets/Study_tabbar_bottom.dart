import 'package:flutter/material.dart';

class UserTabbarScreen extends StatelessWidget {
  const UserTabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 👈 number of tabs
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              children: [
                Center(child: Text("User List Page")),
                Center(child: Text("Mechanic List Page")),
              ],
            ),
            Positioned(
              bottom: 90,
              left: 25,
              right: 25,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffE9F1FF),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: const Color(0xff6EA3F3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
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
