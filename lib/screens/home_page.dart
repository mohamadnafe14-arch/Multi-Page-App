import 'package:flutter/material.dart';
import 'package:multipage_app/screens/about_page.dart';
import 'package:multipage_app/screens/profile_page.dart';
import 'package:multipage_app/screens/settings_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String id = "/Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.cyan),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          Center(
            child: Text(
              "Weclcome to multipage app",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Spacer(flex: 1),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, About.id);
            },
            child: Text("About"),
          ),
          Spacer(flex: 1),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Profile.id);
            },
            child: Text("profile"),
          ),
          Spacer(flex: 1),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Settings.id);
            },
            child: Text("Settings"),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
