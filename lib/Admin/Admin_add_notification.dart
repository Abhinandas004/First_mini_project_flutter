import 'package:flutter/material.dart';
import 'package:mini_project/Admin/Admin_bottom_navigation.dart';
import 'package:mini_project/Admin/Admin_notification.dart';

class AdminAddNotification extends StatefulWidget {
  const AdminAddNotification({super.key});

  @override
  State<AdminAddNotification> createState() => _AdminAddNotificationState();
}

class _AdminAddNotificationState extends State<AdminAddNotification> {
  final TextEditingController _matterController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE8F1FF),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Color(0xffE8F1FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter Matter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),

            TextFormField(
              controller: _matterController,
              decoration: InputDecoration(
                hintText: "Matter",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 30),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter Content",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),

            TextFormField(
              controller: _contentController,
              maxLines: 10,
              decoration: InputDecoration(
                hintText: "Content...",
                filled: true,
                fillColor: Colors.white,
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 250),

            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2357D9),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
