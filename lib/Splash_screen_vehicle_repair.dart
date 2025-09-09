import 'package:flutter/material.dart';
import 'package:mini_project/Common_login.dart';
import 'package:mini_project/Mech/Mech_login.dart';

class SplashScreenVehicleRepair extends StatefulWidget {
  const SplashScreenVehicleRepair({super.key});

  @override
  State<SplashScreenVehicleRepair> createState() =>
      _SplashScreenVehicleRepairState();
}

class _SplashScreenVehicleRepairState extends State<SplashScreenVehicleRepair> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CommonLogin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("Assets/App_logo.png")),
          ),
        ),
      ),
    );
  }
}
