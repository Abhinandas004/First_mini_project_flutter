import 'package:flutter/material.dart';

class ListviewBuilderEg extends StatefulWidget {
  const ListviewBuilderEg({super.key});

  @override
  State<ListviewBuilderEg> createState() => _ListviewBuilderEgState();
}

class _ListviewBuilderEgState extends State<ListviewBuilderEg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffE8F1FF),
      body: ListView.builder(
        padding:  EdgeInsets.all(10),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin:  EdgeInsets.symmetric(vertical: 8),
            padding:  EdgeInsets.all(12),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset:  Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage:  AssetImage("Assets/Rectangle 13.png"),
                ),
                 SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Name ",
                        style:  TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(height: 4),
                      Text("Location ", style:  TextStyle(fontSize: 15)),
                      Text(
                        "Mobile Number ",
                        style:  TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Email@example.com",
                        style:  TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
