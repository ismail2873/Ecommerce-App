import 'package:app1/controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
   BottomNav({super.key});


  @override
  Widget build(BuildContext context) {
  final BottomNavController _controller = Get.put(BottomNavController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          selectedIndex: _controller.currentIndex.value,
          onDestinationSelected: (value) => _controller.currentIndex.value = value,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shopping_bag), label: 'cart'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          ],
        )
      ),
      body: Obx(()=> _controller.pages[_controller.currentIndex.value]),
    );
  }
}