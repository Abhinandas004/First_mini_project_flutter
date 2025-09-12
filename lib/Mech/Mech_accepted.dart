import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_status_completed.dart';

class MechAccepted extends StatefulWidget {
  const MechAccepted({super.key});
  @override
  State<MechAccepted> createState() => _MechAcceptedState();
}

class _MechAcceptedState extends State<MechAccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MechStatusCompleted(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(12),
                height: 150,
                width: 362,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffCFE2FF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("Assets/Ellipse 11.png"),
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Fuel leaking",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Date",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Time",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Place",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Payment pending",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
