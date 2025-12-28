import 'package:flutter/material.dart';
import 'package:multipage_app/theme_notifier.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  static String id = "/Settings";
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool clickedNight = false, clickedNoftification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"), backgroundColor: Colors.cyan),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Light mode"),
              trailing: Switch(
                value: clickedNight,
                onChanged: (value) {
                  setState(() {
                    clickedNight = value;
                  });
                  themeNotifier.value = themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                },
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Noftification"),
              trailing: Switch(
                value: clickedNoftification,
                onChanged: (value) {
                  setState(() {
                    clickedNoftification = value;
                  });
                  if (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Thanks for your trust")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("You shoud come and see us like a dog"),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
