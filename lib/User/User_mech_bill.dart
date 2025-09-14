import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/User/User_payment_page.dart';

class UserMechBill extends StatefulWidget {
  const UserMechBill({super.key});

  @override
  State<UserMechBill> createState() => _UserMechBillState();
}

class _UserMechBillState extends State<UserMechBill> {
  double rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text("Mechanic Bill"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                "Assets/ba5eaddb1aaf0a6436cad1242c58d32bae9dadeb.png",
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Name",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text("2 year+ experience", style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          Container(
            height: 30,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                "Available",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar(
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                halfFilledIcon: Icons.star_half,
                isHalfAllowed: true,
                filledColor: Colors.amber,
                size: 40,
                initialRating: rating,
                maxRating: 5,
                onRatingChanged: (value) {
                  setState(() => rating = value);
                  print("Rating: $value");
                },
              ),
            ],
          ),
          SizedBox(height: 70),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Row(
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "₹  2000/-",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 120),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserPaymentPage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2357D9),
                  ),
                  child: Center(
                    child: Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
