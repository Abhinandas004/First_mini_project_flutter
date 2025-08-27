import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [

            Center(
              child: Container(
                height: 150,
                width: 342,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffCFE2FF),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "Assets/Ellipse 11.png",
                            ),
                          ),
                          SizedBox(height: 8),
                          Text("Name"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Fuel leaking",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 12,),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 11,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Payment pending",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Date"),
                            SizedBox(height: 6),
                            Text("Time"),
                            SizedBox(height: 6),
                            Text("Place"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffCFE2FF),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("Assets/Ellipse 11.png"),
                        ),
                        SizedBox(height: 8),
                        Text("Name"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Engine service",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 11,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Payment success",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("Date"),
                          SizedBox(height: 6),
                          Text("Time"),
                          SizedBox(height: 6),
                          Text("Place"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 342,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffCFE2FF),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("Assets/Ellipse 11.png"),
                        ),
                        SizedBox(height: 8),
                        Text("Name"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "A/c service",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Date"),
                          SizedBox(height: 6),
                          Text("Time"),
                          SizedBox(height: 6),
                          Text("Place"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
