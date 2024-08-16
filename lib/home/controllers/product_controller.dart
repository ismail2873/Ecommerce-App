import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import 'package:app1/models/product.dart';
import 'package:app1/models/category.dart' as cat;

class ProductController extends GetxController {
  var loading = false.obs;
  var catLoading= false.obs;
  var categoryList = <cat.Category>[].obs;
  var productList = <ProductElement>[].obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    productList.value = await fetchData();
    categoryList.value = await fetchCategory();
  }
  
   Future<List<ProductElement>> fetchData() async{
    loading.value = true;
    var response =await http.get(Uri.parse('https://dummyjson.com/products'));

    if(response.statusCode== 200){
      var data = json.decode(response.body);
      Product product = Product.fromJson(data as Map<String, dynamic>);
      loading.value = false;
      return product.products;
    }
    else{
      throw Exception('Api call failed');
    }
   }
   
    Future<List<cat.Category>> fetchCategory() async {
    catLoading.value = true;
    var response =await http.get(Uri.parse('https://dummyjson.com/products/categories'));

    if(response.statusCode== 200){
      List<dynamic> data = json.decode(response.body);
      List<cat.Category> category = data.map((item) => cat.Category.fromJson(item)).toList();
      catLoading.value = false;
      return category;
    }
    else{
      throw Exception('Api call failed');
    }
   }
    }

   
