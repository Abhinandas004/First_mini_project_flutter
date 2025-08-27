import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudyStack extends StatefulWidget {
  const StudyStack({super.key});

  @override
  State<StudyStack> createState() => _StudyStackState();
}

class _StudyStackState extends State<StudyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Positioned(left: 50,top: 50,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.teal),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
