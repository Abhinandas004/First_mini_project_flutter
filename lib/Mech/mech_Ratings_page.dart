import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_navigation.dart';

class MechRatingsPage extends StatefulWidget {
  const MechRatingsPage({super.key});

  @override
  State<MechRatingsPage> createState() => _MechRatingsPageState();
}

class _MechRatingsPageState extends State<MechRatingsPage> {
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
            child: Text("Rating"),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "The rating given to you",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Center(
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  "Assets/11cdf5ebe3877653beb65e7e69fd471c30bb3384.png",
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("engine work "),
                            ),
                            SizedBox(height: 10),
                            Text("Date"),
                            SizedBox(height: 10),
                            Text("Time"),
                            SizedBox(height: 10),
                            Text("Place"),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text("Rating"),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 23,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 23,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 23,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 23,
                                ),
                                Icon(Icons.star_outline, size: 23),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              "4/5",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
