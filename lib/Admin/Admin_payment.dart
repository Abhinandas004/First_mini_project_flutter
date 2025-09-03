import 'package:flutter/material.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({Key? key}) : super(key: key);

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
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

      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.all(12),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name"),
                    Text("10/11/2023"),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text("₹ 5455/-"),
                  ],
                ),
                Row(
                  children: [
                    Text("Service"),
                  ],
                ),
                Row(
                  children: [
                    Text("Mechanic name"),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
