import 'package:flutter/material.dart';

class UserMechFailedPage extends StatefulWidget {
  const UserMechFailedPage({super.key});

  @override
  State<UserMechFailedPage> createState() => _UserMechFailedPageState();
}

class _UserMechFailedPageState extends State<UserMechFailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Color(0xffCFE2FF),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 70),
          child: Text("Failed project"),
        ),
      ),
    ),);
  }
}
