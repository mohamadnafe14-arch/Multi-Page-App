import 'package:flutter/material.dart';
import 'package:multipage_app/screens/about_page.dart';
import 'package:multipage_app/screens/home_page.dart';
import 'package:multipage_app/screens/profile_page.dart';
import 'package:multipage_app/screens/settings_page.dart';
import 'package:multipage_app/theme_notifier.dart';

void main() {
  runApp(
    ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeNotifier.value,
          initialRoute: Home.id,
          routes: {
            Home.id: (context) => Home(),
            About.id: (context) => About(),
            Profile.id: (context) => Profile(),
            Settings.id: (context) => Settings(),
          },
        );
      },
    ),
  );
}
