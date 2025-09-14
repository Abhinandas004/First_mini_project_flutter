import 'package:flutter/material.dart';

class UserMechDetails extends StatefulWidget {
  const UserMechDetails({super.key});

  @override
  State<UserMechDetails> createState() => _UserMechDetailsState();
}

class _UserMechDetailsState extends State<UserMechDetails> {
  String _selectedItem = 'Fuel leaking';
  String _weselected = '';

  final List<String> _options1 = [
    '',
    'Fuel leaking',
    'Battery check',
    'Brake pad replacement  ',
    'Tyre changing and repair  ',
  ];

  final List<String> _options = [
    'Fuel leaking',
    'Battery check',
    'Brake pad replacement  ',
    'Tyre changing and repair  ',
  ];
  @override
  void initState() {
    super.initState();
    _selectedItem = _options.first;
    _weselected = _options1.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            child: Text("Needed service"),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  "Assets/ba5eaddb1aaf0a6436cad1242c58d32bae9dadeb.png",
                ),
              ),
            ),
          ),
          Text(
            "Name",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text("Contact number", style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
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
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  "Add needed service",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFE2FF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButton<String>(
                        value: _selectedItem,
                        items: _options.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text(value),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedItem = newValue!;
                          });
                        },
                        underline: const SizedBox(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "Assets/a01ffede1eba194682a64d6b496148abb64b8d6a.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffCFE2FF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButton<String>(
                        value: _weselected,
                        items: _options1.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text(value),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _weselected = newValue!;
                          });
                        },
                        underline: const SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Text(
                  "Place",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 50),
            child: TextFormField(maxLines: 2,
              decoration: InputDecoration(
                fillColor: Color(0xffCFE2FF),
                filled: true,
                hintText: 'Place',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 70,),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff2357D9),
            ),
            child: Center(
              child: Text(
                "Request",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
