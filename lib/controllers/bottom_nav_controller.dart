import 'package:app1/home/home_page/home_page.dart';
import 'package:app1/home/product/cart.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {

  var currentIndex = 0.obs;

  final pages = [
    HomePage(),
    HomePage(),
    CartPage(),
    HomePage(),
  ];
  
}