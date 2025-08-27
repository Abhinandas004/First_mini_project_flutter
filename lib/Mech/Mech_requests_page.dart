import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MechRequestsPage extends StatefulWidget {
  const MechRequestsPage({super.key});

  @override
  State<MechRequestsPage> createState() => _MechRequestsPageState();
}

class _MechRequestsPageState extends State<MechRequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 55),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Fual leaking",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                ],
              ),
            ),

          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 150,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 55),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Engine Service",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                ],
              ),
            ),

          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 150,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 55),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "A/c service",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
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
                ],
              ),
            ),

          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
