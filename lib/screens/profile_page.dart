import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static String id = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B688B),
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 155,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage("images/صورتي.png"),
              ),
            ),
            Text(
              "Mohamed Nafe",
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            Text(
              "Flutter developer",
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 60,
              endIndent: 60,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
              child: ListTile(
                leading: Icon(Icons.phone, size: 30),
                title: Text("(+20) 1090763462"),
              ),
            ),
            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                leading: Icon(Icons.email, size: 30),
                title: Text("mohamadnafe14@gmail.com"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
