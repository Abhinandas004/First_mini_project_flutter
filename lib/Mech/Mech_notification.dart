import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_navigation.dart';

class MechNotification extends StatefulWidget {
  const MechNotification({super.key});

  @override
  State<MechNotification> createState() => _MechNotificationState();
}

class _MechNotificationState extends State<MechNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MechNavigation()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text("Notification"),
          ),
        ),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  margin:  EdgeInsets.symmetric(vertical: 8),
                  padding:  EdgeInsets.all(12),
                  height: 150,
                  width: 362,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)
                  ),child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 90),
                            child: Text("Admin notification",style: TextStyle(color: Colors.grey),),
                          ),
                          Column(
                            children: [
                              Text("10.00 am"),
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Text("10/05/2025",style: TextStyle(color: Colors.grey),),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
