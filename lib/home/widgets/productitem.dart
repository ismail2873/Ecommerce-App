import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String price;
  const ProductItem({
    super.key,
    required this.image,required this.name,required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 120,
            child:
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image(image: image,
              fit: BoxFit.cover,),
            ),
        
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(name),
      ),
    Text(price),
      ]
      
    );
  }
}