import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_aquascape/pages/home_page.dart';
import 'package:project_aquascape/pages/login_page.dart';
import 'package:project_aquascape/pages/splash_page.dart';
import 'package:project_aquascape/pages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_aquascape/utils/errorMessage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/loginpage', page: () => LoginPage()),
        GetPage(name: '/signup', page: () => SignUp()),
        GetPage(name: '/homepage', page: () => HomePage())
      ],
    );
  }
}
