import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_aquascape/controller/controller.dart';
import 'package:project_aquascape/pages/login_page.dart';
import 'package:project_aquascape/pages/signup_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 4), () {});
    Get.to(() => SignUp());
  }

  ProjectController projectController = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: (Color.fromARGB(255, 7, 185, 245)),
              gradient: LinearGradient(colors: [
                (Color.fromARGB(255, 7, 185, 245)),
                (Color.fromARGB(255, 7, 185, 245))
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'lib/images/logo.png',
                height: 90,
                width: 90,
              ),
            ),
          )
        ],
      ),
    );
  }
}
