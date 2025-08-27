import 'package:flutter/material.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF2FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFEAF2FF),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage("Assets/Ellipse 1.png"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 142.2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Heading",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum is a placeholder text commonly\nused to demonstrate the visual form of a\n document or a typeface without relying  . . . . .  ",
                    style: TextStyle(fontSize: 16.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 142.2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Heading",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum is a placeholder text commonly\nused to demonstrate the visual form of a\n document or a typeface without relying  . . . . .  ",
                    style: TextStyle(fontSize: 16.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 142.2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Heading",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum is a placeholder text commonly\nused to demonstrate the visual form of a\n document or a typeface without relying  . . . . .  ",
                    style: TextStyle(fontSize: 16.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 142.2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Heading",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum is a placeholder text commonly\nused to demonstrate the visual form of a\n document or a typeface without relying  . . . . .  ",
                    style: TextStyle(fontSize: 16.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 142.2,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Heading",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum is a placeholder text commonly\nused to demonstrate the visual form of a\n document or a typeface without relying  . . . . .  ",
                    style: TextStyle(fontSize: 16.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
