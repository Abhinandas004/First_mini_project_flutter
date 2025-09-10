import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Studuurllauncher extends StatefulWidget {
  const Studuurllauncher({super.key});

  @override
  State<Studuurllauncher> createState() => _StuduurllauncherState();
}

class _StuduurllauncherState extends State<Studuurllauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final Uri telUri = Uri(scheme: 'tel', path: '9778002990');
            await launchUrl(telUri);},
          child: const Text('Open Dial pad'),
        ),
      ),
    );
  }
}
