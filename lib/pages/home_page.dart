import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project_aquascape/pages/login_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              onPressed: (() => SignOut()),
            )
          ],
        ),
      ),
    );
  }

  Future<void> SignOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/loginpage', (Route<dynamic> route) => false);
  }
}
