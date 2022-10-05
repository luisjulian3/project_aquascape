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
    await Future.delayed(Duration(milliseconds: 900), () {});
    Get.to(() => SignUp());
  }

  ProjectController projectController = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
