import 'package:flutter/material.dart';
import 'package:app1/models/product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
title: Text("Cart"),
automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: ListView(
          scrollDirection:  Axis.vertical,
          shrinkWrap: true,
          
          children: [
            Container(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/ecomerce.jpg"),width: 50,height: 50,),
                  Column(
                    children: [
                      Text("product 1"),
                      Text("price"),
                      Text('quaintity')
                    ],
                  )
                ],
              ),
            ),
             Container(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/ecomerce.jpg"),width: 50,height: 50),
                  Column(
                    children: [
                      Text("product 1"),
                      Text("price"),
                      Text('quaintity')
                    ],
                  )
                ],
              ),
            ),
             Container(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/ecomerce.jpg"),width: 50,height: 50),
                  Column(
                    children: [
                      Text("product 1"),
                      Text("price"),
                      Text('quaintity')
                    ],
                  )
                ],
              ),
            ),
             Container(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/ecomerce.jpg"),width: 50,height: 50),
                  Column(
                    children: [
                      Text("product 1"),
                      Text("price"),
                      Text('quaintity')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}