import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_navigation.dart';

class MechServices extends StatefulWidget {
  const MechServices({super.key});

  @override
  State<MechServices> createState() => _MechServicesState();
}

class _MechServicesState extends State<MechServices> {
  void showMyAlert(BuildContext context) {
    final TextEditingController serviceController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => Center(
        child: Material(
          child: Container(
            height: 300,
            width: 350,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffCFE2FF),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Service",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(height: 40),
                TextFormField(
                  controller: serviceController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Center(
                  child: InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2357D9),
                      ),
                      child: Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMyAlert(context),
        child: Icon(Icons.add, size: 30),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffCFE2FF),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MechNavigation()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text("Service"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40),
            child: Center(
              child: Container(
                height: 250,
                width: 372,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffCFE2FF),
                ),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tyre puncture service"),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
