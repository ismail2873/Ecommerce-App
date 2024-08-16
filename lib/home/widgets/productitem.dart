import 'package:app1/home/product/product_details.dart';
import 'package:app1/models/product.dart';
import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  final ProductElement product;
  const ProductItem({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> ProductDetails(product: product))
        ),
      
      child: Column(
        children: [
          Container(
            width: 80,
            height: 120,
              child:
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image(image: NetworkImage(product.thumbnail),
                fit: BoxFit.cover,),
              ),
          
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(product.title),
        ),
      Text(product.price.toString()),
        ]
        
      ),
    );
  }
}