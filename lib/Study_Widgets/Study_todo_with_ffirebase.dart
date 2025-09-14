import 'package:flutter/material.dart';

class StudyTodoWithFfirebase extends StatefulWidget {
  const StudyTodoWithFfirebase({super.key});

  @override
  State<StudyTodoWithFfirebase> createState() => _StudyTodoWithFfirebaseState();
}

class _StudyTodoWithFfirebaseState extends State<StudyTodoWithFfirebase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
    );
  }
}
