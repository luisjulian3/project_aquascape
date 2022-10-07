import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_aquascape/controller/navigation_bar_controller.dart';
import 'package:project_aquascape/pages/dashboard_page.dart';
import 'package:project_aquascape/pages/home_page.dart';
import 'package:project_aquascape/pages/profile_page.dart';
import 'package:project_aquascape/pages/signup_page.dart';

class NavigationPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  NavigationPage({super.key});

  final screens = [
    HomePage(),
    DashboardPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.green,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin_outlined),
                  label: "Profile",
                  backgroundColor: Colors.blue),
            ],
          )),
    );
  }
}
