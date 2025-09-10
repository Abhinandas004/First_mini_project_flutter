import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_navigation.dart';

class UserSignup extends StatefulWidget {
  const UserSignup({super.key});

  @override
  State<UserSignup> createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFE2FF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("Assets/App_logo.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Username",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff2357D9),
              ),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
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
