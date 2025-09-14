import 'package:flutter/material.dart';

class UserButtomBar extends StatefulWidget {
  const UserButtomBar({super.key});

  @override
  State<UserButtomBar> createState() => _UserButtomBarState();
}

class _UserButtomBarState extends State<UserButtomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Handle Mechanic button press
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            child: Text('Mechanic'),
          ),
        ),
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              // Handle Request button press
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              side: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            child: Text('Request'),
          ),
        ),
      ],
    )
      ,);
  }
}
