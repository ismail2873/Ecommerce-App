
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Icon icon;
  final String name;
  const CategoryItem({
    super.key, required this.icon, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(50)
          ),
          child: icon,
        ),
      
    
      ],
    
    );
  }
}