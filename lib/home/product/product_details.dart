import 'package:app1/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetails extends StatelessWidget {
  final ProductElement product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true, actions: [Icon(Icons.heart_broken)],),

      body: Column(
        children: [
          Image(image:NetworkImage(product.thumbnail), width: MediaQuery.of(context).size.width - 20,),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width-100, child: Text(product.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,), softWrap: true, overflow: TextOverflow.ellipsis,)),
                Text(product.price.toString(), textAlign: TextAlign.end,style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold),),
               
              ],
            ),
            
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Text('*****',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.amber),),
                Text(product.stock.toString(),style: TextStyle(fontWeight: FontWeight.bold, color:Colors.green,)),
              ],
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: const BoxDecoration(border: Border.symmetric(horizontal: BorderSide(width: 1)),),
              child: Column(
                
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text('Color Variant',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    
                      children: [
                        
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.amber),
                                
                        ),
                                 Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 29, 61, 2)),
                                
                        ),
                         Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 4, 1, 88)),
                                
                        ), Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 92, 3, 10)),
                                
                        ),
                         Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: const Color.fromARGB(255, 129, 129, 127)),
                                
                        )
                      ],
                    ),
                  ),

                ],
            
              ) ,
            ),
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Text('Brand:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                Text(product.brand.toString(),style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 128, 131, 128),)),
              ],
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Text('Model Name:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                Text('ABNSSD',style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 108, 110, 108),)),
              ],
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Text('Color:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                Text('red',style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 107, 109, 107),)),
              ],
            ),
            
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Text('Condition:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                Text('New',style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromARGB(255, 132, 134, 132),)),
              ],
            ),
            
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width -20 ,
            height: 40,
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 212, 6, 6)),
              child: Center(child: Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          )
        ],

      ),

    );
  }
}