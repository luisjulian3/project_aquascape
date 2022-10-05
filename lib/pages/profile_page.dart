import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'signed in as',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
              icon: Icon(
                Icons.arrow_back,
                size: 32,
              ),
              label: Text(
                'sign out',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
