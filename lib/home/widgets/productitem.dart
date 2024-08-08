import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
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
              child: Image(image: AssetImage('assets/images/ecomerce.jpg'),
              fit: BoxFit.cover,),
            ),
        
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text('Smart Watch'),
      ),
    Text('\$200.0'),
      ]
      
    );
  }
}