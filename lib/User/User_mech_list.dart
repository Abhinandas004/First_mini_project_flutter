import 'package:flutter/material.dart';
import 'package:mini_project/User/User_mech_details.dart';

class UserMechList extends StatefulWidget {
  const UserMechList({super.key});

  @override
  State<UserMechList> createState() => _UserMechListState();
}

class _UserMechListState extends State<UserMechList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserMechDetails()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "Assets/ba5eaddb1aaf0a6436cad1242c58d32bae9dadeb.png",
                        ),
                      ),
                      Text("Name", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "2+ year experience",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Fuel leaking", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Container(
                        height: 24,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            "Available",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
