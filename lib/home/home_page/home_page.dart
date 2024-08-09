import 'package:another_flutter_splash_screen/splashs/fade_In_splash.dart';
import 'package:app1/home/product/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:app1/home/widgets/productitem.dart';
import 'package:app1/home/widgets/category_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:app1/home/product/product_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    color: Colors.amber,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    CategoryItem(
                      icon: Icon(Icons.psychology),
                      name: 'Product 1',
                    ),
                    CategoryItem(
                      icon: Icon(Icons.dangerous),
                      name: 'Product 2',
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
              StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails()));
                    },
                    child: StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ProductItem(
                    image: AssetImage('assets/images/ecomerce.jpg'),
                    name: 'Smart Watch',
                    price: '\$200.0',
                  ))),
                  StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ProductItem(
                    image: AssetImage('assets/images/macbook.jfif'),
                    name: 'Apple Macbook',
                    price: '\$100.0',
                  )),
                  StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ProductItem(
                    image: AssetImage('assets/images/download.jfif'),
                    name: 'Phone',
                    price: '\$150.0',
                  )),
                  StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: ProductItem(
                    image: AssetImage('assets/images/ecomerce.jpg'),
                    name: 'Ear buds',
                    price: '\$300.0',
                  )),


                ],
                )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
         
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
