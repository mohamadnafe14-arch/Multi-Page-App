import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});
  static String id = "/About";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"), backgroundColor: Colors.cyan),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "That is a small app with great features",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
