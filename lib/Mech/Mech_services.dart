import 'package:flutter/material.dart';
import 'package:mini_project/Mech/Mech_navigation.dart';

class MechServices extends StatefulWidget {
  const MechServices({super.key});

  @override
  State<MechServices> createState() => _MechServicesState();
}

class _MechServicesState extends State<MechServices> {
  final List<String> services = [
    'Tyre puncture service',
    'Oil change',
    'Battery replacement',
    'Brake inspection',
    'Engine diagnostics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCFE2FF),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MechNavigation()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text("Service"),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffCFE2FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        services[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            services.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
