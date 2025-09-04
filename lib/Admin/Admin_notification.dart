import 'package:flutter/material.dart';
import 'package:mini_project/Admin/Admin_add_notification.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdminAddNotification()),
          );
        },
        child: Icon(Icons.add, size: 30),
      ),
      backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffE8F1FF),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage("Assets/Ellipse 1.png"),
          ),
        ),
      ),
      body: ListView.builder(
        padding:  EdgeInsets.all(5),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:  EdgeInsets.symmetric(vertical: 8),
                padding:  EdgeInsets.all(12),
                height: 130,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Heading", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Text(
                  "Lorem ipsum is a placeholder text commonly  used to demonstrate the visual form of a document or a typeface without relying",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
