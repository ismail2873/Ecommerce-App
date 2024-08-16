import 'package:another_flutter_splash_screen/splashs/fade_In_splash.dart';
import 'package:app1/home/controllers/product_controller.dart';
import 'package:app1/home/product/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:app1/home/widgets/productitem.dart';
import 'package:app1/home/widgets/category_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:app1/home/product/product_details.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Ecommerce App')),
          automaticallyImplyLeading: true,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: kToolbarHeight - 10,
              width: kToolbarHeight - 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/ecomerce.jpg',
                      ),
                      fit: BoxFit.cover)),
            )
          ],
        ),
        drawer: const Drawer(
          width: 300,
          semanticLabel: 'Ecomerce App',
          elevation: 0,
          child: Column(
            children: [Text('Item 1'), Text('item 2')],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Enter Product Name'),
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.accessible)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Shop By Category',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    
                    controller.catLoading.value? CircularProgressIndicator(): Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            
                            itemCount: controller.categoryList.length,
                            shrinkWrap: true,
                            itemBuilder: (context,index)=> CategoryItem(category: controller.categoryList[index]),
                            ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Newest Arival',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Obx(
                ()=>controller.loading.value ? CircularProgressIndicator(): StaggeredGridView.countBuilder(
                  itemCount: controller.productList.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                crossAxisCount: 4,
                itemBuilder: (_, index) => ProductItem(product: controller.productList[index]),
                staggeredTileBuilder: (_) => StaggeredTile.fit(2),
                
                )
              )
            ],
          ),
        ),
      
      ),
    );
  }
}
